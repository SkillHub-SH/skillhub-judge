# == Schema Information
#
# Table name: companies
#
#  id                     :bigint           not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  name                   :string           default(" "), not null
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_companies_on_reset_password_token  (reset_password_token) UNIQUE
#
class Company < ApplicationRecord
  devise :database_authenticatable, :jwt_authenticatable,
         :registerable, jwt_revocation_strategy: JwtDenylist

  # Associations
  has_many :problems, dependent: :destroy
  has_many :contests, dependent: :destroy
  has_many :jobs, dependent: :destroy

  # Validations
  validates :email, presence: true, uniqueness: { case_sensitive: true }

  def jwt_payload
    {
      model: 'company',
      name: name,
      id: id,
      email: email
    }
  end
end
