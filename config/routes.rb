Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :authors, only: [:new, :show, :update, :create, :edit]
  resources :posts, only: [:new, :show, :update, :create, :edit]
end
