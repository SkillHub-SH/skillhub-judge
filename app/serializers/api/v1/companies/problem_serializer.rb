module Api
  module V1
    module Companies
      class ProblemSerializer < ActiveModel::Serializer
        attributes :id, :title, :body, :difficullty, :memory_limit, :time_limit,
                   :input, :output, :input_description, :output_description, :notes, :score,
                   :accepted_percentage, :created_at, :updated_at, :company_id, :contest_id
        belongs_to :topic

        def accepted_percentage
          object.accepted_percentage
        end
      end
    end
  end
end
