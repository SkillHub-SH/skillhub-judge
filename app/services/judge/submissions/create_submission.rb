require 'active_support/all'
require 'net/http'
require 'uri'

module Judge
  module Submissions
    class CreateSubmission
      def initialize(params, problem, programming_languge)
        @params = params
        @problem = problem
        @programming_languge = programming_languge
      end

      def create
        response = post_submission
        return [false, response.code] unless response.code == '201'

        response_body = JSON.parse(response.body)
        submission = Submission.new(@params.merge!(response_body))
        if submission.save
          [true, submission]
        else
          [false, submission]
        end
      end

      private

      def post_submission
        uri = URI('https://judge0-ce.p.rapidapi.com/submissions?base64_encoded=true&wait=false')
        request_header = {
          'Content-Type' => 'application/json',
          'X-RapidAPI-Key' => 'b3dbae9531mshbbdab592822f11dp1605bejsnf25649f22823',
          'X-RapidAPI-Host' => 'judge0-ce.p.rapidapi.com'
        }
        request_body = {
          source_code: @params[:source_code],
          stdin: @params[:input],
          expected_output: @problem.output,
          language_id: @programming_languge.judge_code
        }

        http = Net::HTTP.new(uri.host, uri.port)
        http.use_ssl = true
        http.verify_mode = OpenSSL::SSL::VERIFY_NONE

        request = Net::HTTP::Post.new(uri.path, request_header)
        request.body = request_body.to_json

        http.request(request)
      end
    end
  end
end
