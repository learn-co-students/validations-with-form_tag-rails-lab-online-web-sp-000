Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :authors, only: [:new, :edit, :show, :create, :update]
  resources :posts, only: [:new, :edit, :show, :create, :update]
end
