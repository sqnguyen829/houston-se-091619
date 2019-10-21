Rails.application.routes.draw do
  resources :instructors #we have routes because of rails g resource
  resources :students #we have routes because of rails g resource

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
