Rails.application.routes.draw do
  resources :drivers
  # resources :cats
  resources :trains
  
  #list of all the trains
  # get '/trains', to: 'trains#index' 

  # #form for creating a new train
  # get '/trains/new' , to: 'trains#new'

  # #show a single train info
  # get '/trains/:id', to: 'trains#show'

  # #create a new train
  # post '/trains', to: 'trains#create'

  # #form for editing a train
  # get '/trains/:id/edit', to: 'trains#edit' 

  # #update a train
  # patch '/trains/:id', to: 'trains#update'

  # #delete a train
  # delete '/trains/:id', to: 'trains#destroy'



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
