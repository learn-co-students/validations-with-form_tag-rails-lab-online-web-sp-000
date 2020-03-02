Rails.application.routes.draw do
  resources :authors, only: [:new, :edit, :show, :update, :create]
  resources :posts, only: [:new, :edit, :show, :update, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
