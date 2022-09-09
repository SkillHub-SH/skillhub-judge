module Api
  module V1
    class ProfilesController < ApplicationController
      skip_before_action :verify_authenticity_token
      before_action :find_developer

      def show
        render json: @developer, serializer: Api::V1::DeveloperSerializer, status: :ok
      end

      def update
        if @developer.update(developer_params)
          render json: @developer, serializer: Api::V1::DeveloperSerializer, status: :ok
        else
          render json: { errors: @developer.errors.full_messages }, status: :unprocessable_entity
        end
      end

      private

      def developer_params
        params.require(:developer).permit(
          :username, :email, :bio, :bersonal_website_link,
          :work_at, :study_at, :facebook_link, :twitter_link,
          :github_link, :stackoverflow_link, :linkedin_link
        )
      end

      def find_developer
        @developer = Developer.find_by(id: params[:id])
        return render json: { errors: 'Developer not found' }, status: :not_found if @developer.blank?
      end
    end
  end
end
