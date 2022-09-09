module Api
  module V1
    module Companies
      class JobSerializer < ActiveModel::Serializer
        attributes :id, :title, :description, :requirements

        belongs_to :company
      end
    end
  end
end
