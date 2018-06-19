Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  
  root to: 'posts#index'

  # devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations'}
  resources :posts do
    resources :images
    resources :comments
    get 'approve',on: :member 
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
