# == Schema Information
#
# Table name: submissions
#
#  id                      :bigint           not null, primary key
#  input                   :text
#  memory_limit            :float
#  output                  :text
#  source_code             :text             not null
#  status                  :string           default("in_queue")
#  time_limit              :float
#  token                   :string           not null
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#  developer_id            :bigint
#  problem_id              :bigint
#  programming_languges_id :bigint
#
# Indexes
#
#  index_submissions_on_developer_id             (developer_id)
#  index_submissions_on_problem_id               (problem_id)
#  index_submissions_on_programming_languges_id  (programming_languges_id)
#
class Submission < ApplicationRecord
  # Scopes
  scope :for_problem, ->(peoblem_id) { where(problem_id: peoblem_id) }
  scope :by_developer, ->(developer_id) { where(developer_id: developer_id) }

  # Enums
  enum status: {
    in_queue: 'In Queue',
    processing: 'Processing',
    accepted: 'Accepted',
    wrong_answer: 'Wrong Answer',
    time_limit_exceeded: 'Time Limit Exceeded',
    compilation_error: 'Compilation Error',
    runtime_error: 'Runtime Error',
    internal_error: 'Internal Error',
    exec_format_error: 'Exec Format Error'
  }

  # Associations
  belongs_to :developer
  belongs_to :problem
  belongs_to :programming_languge, optional: true

  # Callbacks
  after_create :update_developer_rank
  after_create :set_result

  def update_developer_rank
    return unless status.equal?('Accepted')

    developer.update_rank(problem.score)
  end

  private

  def set_result
    uri = URI("https://judge0-ce.p.rapidapi.com/submissions/#{token}?base64_encoded=true&fields=*")
    request_header = {
      'Content-Type' => 'application/json',
      'X-RapidAPI-Key' => 'b3dbae9531mshbbdab592822f11dp1605bejsnf25649f22823',
      'X-RapidAPI-Host' => 'judge0-ce.p.rapidapi.com'
    }

    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Get.new(uri.path, request_header)
    response = http.request(request)

    response_body = JSON.parse(response.body)
    params = create_params_hash(response_body)

    errors.add(:base, 'Unexpected error') unless update(params)
  end

  def create_params_hash(resbonse_body)
    {
      programming_languges_id: ProgrammingLanguge.find_by(judge_code: resbonse_body['language_id'])&.id || 5,
      time_limit: resbonse_body['time'],
      memory_limit: resbonse_body['memory'],
      output: resbonse_body['stdout'],
      status: resbonse_body['status']['description']
    }
  end
end
