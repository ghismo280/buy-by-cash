Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'conversations', to: 'conversations#index'
  post 'conversations', to: 'conversations#accept'
  delete 'conversations', to: 'conversations#delete', as: 'delete_conversation'
  get 'messages/:id', to: 'messages#show', as: 'show_message'

  get '/:id', to: 'pages#show', as: "show_ebuyer"
  get '/:id/conversations/new', to: 'conversations#new', as: "new_conversation"
  post '/:id/conversations', to: 'conversations#create', as: "create_conversation"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
