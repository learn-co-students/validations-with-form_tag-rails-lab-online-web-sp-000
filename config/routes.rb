Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :authors
  resources :posts
  #get "/authors/new", to: "authors#new", as: "new_author"
  #get "/authors/:id", to: "authors#show", as: "authors"
  #post "/authors", to: "authors#create"
end
