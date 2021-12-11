Rails.application.routes.draw do
  root to: 'api/v1/albums#index'
  namespace :api do
    namespace :v1 do
      resources :albums, only: [:index, :show]
      resources :users, only: [:show] do
        resources :albums, only: [:index]
      end
    end
  end
end