module Api
  module V1
    module Companies
      class JobApplicationsController < ApplicationController
        skip_before_action :verify_authenticity_token
        before_action :find_job, only: :index
        before_action :find_job_application, only: :show

        def index
          job_applications = @job.job_applications
          render json: job_applications, each_serializer: Api::V1::Companies::JobApplicationSerializer, status: :ok
        end

        def show
          render json: @job_application, serializer: Api::V1::Companies::JobApplicationSerializer, status: :ok
        end

        private

        def find_job
          @job = Job.find_by(id: params[:job_id])
          return render json: { errors: 'Job not found' }, status: :not_found if @job.blank?
        end

        def find_job_application
          @job_application = JobApplication.find_by(id: params[:id])
          return render json: { errors: 'Job application not found' }, status: :not_found if @job_application.blank?
        end
      end
    end
  end
end
