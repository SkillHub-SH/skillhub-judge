# == Schema Information
#
# Table name: jobs
#
#  id           :bigint           not null, primary key
#  description  :string           not null
#  requirements :string           not null
#  title        :string           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  company_id   :bigint
#
# Indexes
#
#  index_jobs_on_company_id  (company_id)
#
class Job < ApplicationRecord
  # Associations
  belongs_to :company
  has_many :job_applications, dependent: :destroy

  def num_of_applicants
    return 0 unless job_applications.any?

    job_applications.count
  end
end
