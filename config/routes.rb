Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

 root to: "pages#profile"

 resources :pages, only: :profile

 resources :skills, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
  resources :options, only: [:new, :create, :edit, :update, :destroy]
  resources :bookings, only: [:new, :create, :edit, :update, :destroy]
 end

end
