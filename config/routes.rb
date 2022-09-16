Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :ships, only: :index do
        member do
          get 'maintenances'
          get 'schedules'
        end
      end
      resources :maintenances

      mount_devise_token_auth_for 'User', at: 'auth', controllers: {
        registrations: 'api/v1/auth/registrations'
      }

      namespace :auth do
        resources :sessions, only: :index
      end
    end
  end
end


