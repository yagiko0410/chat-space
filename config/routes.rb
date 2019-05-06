Rails.application.routes.draw do
  get 'messages/index'

  get 'messages/create'

  get 'messages/message_parms'

  get 'messages/set_group'

#   get 'user/edit'

#   get 'user/update'

#   get 'user/user_params'

#   devise_for :users
#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# end

devise_for :users
  root 'messages#index'
  resources :users, only: [:edit, :update]
  resources :groups, only: [:new, :create, :edit, :update] do
  resources :messages, only: [:index, :create]
  end
end
