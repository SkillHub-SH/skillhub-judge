module Api
  module V1
    class JobApplicationsController < ApplicationController
      skip_before_action :verify_authenticity_token
      before_action :find_developer, only: :index

      def index
        job_applications = @developer.job_applications
        render json: job_applications, each_serializer: Api::V1::JobApplicationSerializer, status: :ok
      end

      def create
        job_application = JobApplication.new(job_application_params)

        if job_application.save
          render json: job_application, serializer: Api::V1::JobApplicationSerializer, status: :created
        else
          render json: { errors: job_application.errors.full_messages }, status: :unprocessable_entity
        end
      end

      private

      def job_application_params
        params.require(:job_application).permit(:company_id, :developer_id, :job_id)
      end

      def find_developer
        @developer = Developer.find_by(id: params[:developer_id])
        return render json: { error: 'No developer found' }, status: :not_found if @developer.blank?
      end
    end
  end
end
