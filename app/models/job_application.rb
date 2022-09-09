# == Schema Information
#
# Table name: job_applications
#
#  id           :bigint           not null, primary key
#  status       :string           default("submitted")
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  company_id   :bigint
#  developer_id :bigint
#  job_id       :bigint
#
# Indexes
#
#  index_job_applications_on_company_id    (company_id)
#  index_job_applications_on_developer_id  (developer_id)
#  index_job_applications_on_job_id        (job_id)
#
class JobApplication < ApplicationRecord
  # Enums
  enum status: {
    submitted: 'submitted',
    in_consideration: 'in consideration',
    rejected: 'rejected'
  }

  # Association
  belongs_to :company
  belongs_to :developer
  belongs_to :job
end
