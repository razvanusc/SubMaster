Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :users, only: [:show, :edit, :update] do
    resources :lessons, only: [:index]
  end


  resources :lessons do
    resources :bookings, only: [:index, :create, :new]
  end
  resources :bookings, only: [:index, :show, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
