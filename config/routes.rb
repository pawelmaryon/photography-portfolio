Rails.application.routes.draw do
  get 'photos', to: 'photos#show'
  root to: 'albums#index'
   
  get 'users', to:'users#show'
  get 'album/:id', to:'albums#show', as: 'album'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
