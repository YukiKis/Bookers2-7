Rails.application.routes.draw do
  get 'homes/about'
  root "homes#home"
  devise_for :users
  resources :users
  resources :books do
    resource :favorites, only: [:create, :destroy]
    resources :comments, only: [:create, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
