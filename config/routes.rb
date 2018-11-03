Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'messages', to: 'messages#index'
  post 'messages', to: 'messages#accept'
  get '/:id', to: 'pages#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
