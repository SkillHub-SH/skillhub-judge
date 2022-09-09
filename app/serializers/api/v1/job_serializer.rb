module Api
  module V1
    class JobSerializer < ActiveModel::Serializer
      attributes :id, :title, :description, :requirements, :num_of_applicants, :created_at, :company_id

      def company_id
        object.company_id
      end

      def num_of_applicants
        object.num_of_applicants
      end
    end
  end
end
