module Api
  module V1
    class ContestSerializer < ActiveModel::Serializer
      attributes :id, :description, :end_at, :level, :name, :start_at, :status
      has_many :problems
    end
  end
end
