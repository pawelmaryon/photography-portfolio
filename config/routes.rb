Rails.application.routes.draw do
  root to: 'albums#index'
   
  get 'users', to:'users#show'
  get 'album', to:'albums#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
