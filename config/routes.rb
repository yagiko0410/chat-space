Rails.application.routes.draw do
  get 'users/edit'

  get 'users/update'

  get 'users/user_parms'

  devise_for :users
  root 'messages#index'
  resources :users, only: [:edit, :update]
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
