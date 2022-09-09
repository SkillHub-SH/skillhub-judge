module Api
  module V1
    module Companies
      class JobsController < ApplicationController
        skip_before_action :verify_authenticity_token
        before_action :find_company, only: :index
        before_action :find_job, only: %i[show destroy]

        def index
          jobs = @company.jobs
          render json: jobs, each_serializer: Api::V1::Companies::JobSerializer, status: :ok
        end

        def show
          render json: @job, serializer: Api::V1::Companies::JobSerializer, status: :ok
        end

        def create
          job = Job.new(job_params)

          if job.save
            render json: job, serializer: Api::V1::Companies::JobSerializer, status: :created
          else
            render json: { errors: job.errors.full_messages }, status: :unprocessable_entity
          end
        end

        def destroy
          @job.destroy
          render json: { errors: 'Job deleted successfully' }, status: :ok
        end

        private

        def job_params
          params.require(:job).permit(:title, :description, :requirements, :company_id)
        end

        def find_company
          @company = Company.find_by(id: params[:company_id])
          return render json: { errors: 'Company not found' }, status: :not_found if @company.blank?
        end

        def find_job
          @job = Job.find_by(id: params[:id])
          return render json: { errors: 'Job not found' }, status: :not_found if @job.blank?
        end
      end
    end
  end
end
