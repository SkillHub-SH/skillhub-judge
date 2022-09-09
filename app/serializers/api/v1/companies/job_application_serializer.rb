module Api
  module V1
    module Companies
      class JobApplicationSerializer < ActiveModel::Serializer
        attributes :id, :status, :developer_name, :developer_email, :developer_work_at,
                   :developer_current_position, :developer_study_at, :developer_id, :company_id, :job_id

        def job_id
          object.job.id
        end

        def company_id
          object.company.id
        end

        def developer_id
          object.developer.id
        end

        def developer_name
          object.developer.username
        end

        def developer_email
          object.developer.email
        end

        # TODO: Refactor theese ones
        def developer_work_at
          object.developer.work_at
        end

        def developer_current_position
          object.developer.current_position
        end

        def developer_study_at
          object.developer.study_at
        end
      end
    end
  end
end
