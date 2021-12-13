Rails.application.routes.draw do
  root to: 'albums#index'

  resources :albums

  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      resources :albums, only: [:index, :show]
      resources :users, only: [:show] do
        resources :albums, only: [:index]
      end
    end
  end
end