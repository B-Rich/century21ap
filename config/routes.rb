Century21ap::Application.routes.draw do

  resources :realtors, :statuses, :types

  resources :listings, :except => [:destroy, :show, :update]
  
  root :to => 'listings#index'
  
end
