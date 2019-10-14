Rails.application.routes.draw do
  
  
   resources :authors, except: [:destroy]
  resources :posts, except: [:destroy]
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
