module Api
  module V1
    class JobApplicationSerializer < ActiveModel::Serializer
      attributes :id, :status
    end
  end
end
