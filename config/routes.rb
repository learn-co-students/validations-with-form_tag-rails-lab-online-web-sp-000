Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resource :author, except: [:destroy, :edit]
  # resource :post, controller: 'posts', except: [:edit]
  # post '/authors', to: 'authors#create'
  # get '/posts/:id', to: 'posts#show' 
  
  # get '/post/:id/edit', to: 'posts#edit', as: 'edit_post'
  resource :author, except: [:create, :update, :delete]
  post "authors", to: "authors#create"

  # resource :post, except: [:show, :create, :edit, :delete]
  get '/post/:id', to: "posts#show", as: 'post'
  get '/post/edit/:id', to: "posts#edit", as: 'edit_post'
  patch '/post/:id', to: "posts#update"


end
