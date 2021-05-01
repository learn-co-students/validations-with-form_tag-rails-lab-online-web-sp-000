Rails.application.routes.draw do
  resources :posts, :authors, only: [:new, :show, :edit, :create, :update]
  #resources :authors, only: [:new, :show, :edit, :create, :update]
end