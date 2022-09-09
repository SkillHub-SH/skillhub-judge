# == Schema Information
#
# Table name: jobs
#
#  id           :bigint           not null, primary key
#  description  :string           not null
#  requirements :string           not null
#  title        :string           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  company_id   :bigint
#
# Indexes
#
#  index_jobs_on_company_id  (company_id)
#
require 'rails_helper'

RSpec.describe Job, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
