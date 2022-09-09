module Api
  module V1
    class JobsController < ApplicationController
      skip_before_action :verify_authenticity_token
      before_action :find_job, only: :show

      def index
        jobs = Job.all
        render json: jobs, each_serializer: Api::V1::JobSerializer, status: :ok
      end

      def show
        render json: @job, serializer: Api::V1::JobSerializer, status: :ok
      end

      private

      def find_job
        @job = Job.find_by(id: params[:id])
        return render json: { errors: 'Job not found' }, status: :not_found if @job.blank?
      end
    end
  end
end
