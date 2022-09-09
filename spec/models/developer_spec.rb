# == Schema Information
#
# Table name: developers
#
#  id                     :bigint           not null, primary key
#  bersonal_website_link  :string
#  bio                    :text
#  current_position       :string
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  facebook_link          :string
#  github_link            :string
#  linkedin_link          :string
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  stackoverflow_link     :string
#  study_at               :string
#  twitter_link           :string
#  username               :string
#  work_at                :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_developers_on_reset_password_token  (reset_password_token) UNIQUE
#  index_developers_on_username              (username) UNIQUE
#
require 'rails_helper'

RSpec.describe Developer, type: :model do
  describe 'ActiveModel Associations' do
    it { expect(described_class.reflect_on_association(:submissions).macro).to eq(:has_many) }
    it { expect(described_class.reflect_on_association(:rank).macro).to eq(:has_one) }
  end
end
