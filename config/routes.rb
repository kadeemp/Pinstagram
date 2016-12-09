Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :pins do
    resources :comments
  end

  resources :comments do
    resources :comments
  end
  root 'pins#index'
  get 'home/index'
  get 'home/about'
  get 'users/edit'


end
