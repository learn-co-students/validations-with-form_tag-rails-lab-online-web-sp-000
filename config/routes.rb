Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :authors, :posts
  # get "/authors/new", to: "authors#new", as: "new_author"
  # post "/authors", to: "authors#create"
  # get "/authors/:id", to: "authors#show", as: "author"
end
