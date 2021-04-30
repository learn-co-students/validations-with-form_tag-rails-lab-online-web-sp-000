Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts, :authors, only: [:new, :show, :edit, :create, :update]
  #resources :authors, only: [:new, :show, :edit, :create, :update]
end
