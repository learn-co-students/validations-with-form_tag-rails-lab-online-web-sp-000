Rails.application.routes.draw do
  resources :authors, only: [:index, :show, :new, :create]
  resources :posts, only: [:index, :show, :edit, :update]
end
