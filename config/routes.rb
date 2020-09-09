Rails.application.routes.draw do
  resource :posts, :authors, only: [:show, :new, :edit, :create, :update]
  get '/authors', to: 'authors#show', as: 'author'
  get '/posts', to: 'posts#show', as: 'post'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
