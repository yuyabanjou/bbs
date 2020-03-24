Rails.application.routes.draw do

	root 'items#index'

  devise_for :users

  resources :users do
  	resources :items, only: [:new, :create, :destroy]
  end

  resources :items, only: [:index, :show] do
  	resource :comments, only: [:create]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
