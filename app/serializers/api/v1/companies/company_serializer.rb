module Api
  module V1
    module Companies
      class CompanySerializer < ActiveModel::Serializer
        attributes :id, :name, :email
      end
    end
  end
end
