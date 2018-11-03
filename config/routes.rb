Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'messages', to: 'messages#index'
  get '/:id', to: 'pages#show'
  get '/:id/conversations', to: 'conversations#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
