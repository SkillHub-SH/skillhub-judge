module Api
  module V1
    class DeveloperSerializer < ActiveModel::Serializer
      attributes :id, :username, :email, :bio, :facebook_link, :twitter_link,
                 :github_link, :stackoverflow_link, :linkedin_link, :bersonal_website_link,
                 :study_at, :work_at
    end
  end
end
