module Api
  module V1
    module Companies
      class ProfilesController < ApplicationController
        skip_before_action :verify_authenticity_token
        before_action :find_company

        def show
          puts 'Hey from show'
          render json: @company, serializer: Api::V1::Companies::CompanySerializer, status: :ok
        end

        def update
          if @company.update(company_params)
            render json: @company, serializer: Api::V1::Companies::CompanySerializer, status: :ok
          else
            render json: { errors: @company.errors.full_messages }, status: :unprocessable_entity
          end
        end

        private

        def company_params
          params.require(:company).permit(:name, :email)
        end

        def find_company
          puts 'Hey from find_company'
          @company = Company.find_by(id: params[:id])
          return render json: { errors: 'Company not found' }, status: :not_found if @company.blank?
        end
      end
    end
  end
end
