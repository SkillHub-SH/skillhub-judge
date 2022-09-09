module Api
  module V1
    # Problems controller, contains the following actions:
    class ProblemsController < ApplicationController
      before_action :find_topic, only: %i[index]
      before_action :find_problem, only: :show

      def index
        problems = @topic.problems
        render json: problems, each_serializer: Api::V1::ProblemSerializer, status: :ok
      end

      def show
        render json: @problem, serializer: Api::V1::ProblemSerializer, status: :ok
      end

      def recommended_problems
        problems = Problem.last(5)
        render json: problems, each_serializer: Api::V1::ProblemSerializer, status: :ok
      end

      private

      def find_topic
        @topic = Topic.find_by(id: params[:topic_id])
        return render json: { error: 'topic not found' }, status: :not_found if @topic.blank?
      end

      def find_problem
        @problem = Problem.find_by(id: params[:id])
        return render json: { error: 'problem not found' }, status: :not_found if @problem.blank?
      end
    end
  end
end
