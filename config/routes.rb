# == Route Map
#

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  defaults format: :json do
    devise_for :developers, controllers: {
      sessions: 'api/v1/developers/sessions',
      registrations: 'api/v1/developers/registrations'
    }
    devise_for :companies, controllers: {
      sessions: 'api/v1/companies/sessions',
      registrations: 'api/v1/companies/registrations'
    }
    get '/member-data', to: 'members#show'
  end
end
