Rails.application.routes.draw do
  
  get "users" => 'users#index'

  post "users" => 'users#create'

  get 'users/new'

  get "users/total" => 'users#total'

  get "users/:id/edit" => 'users#edit'

  get "users/:id" => 'users#show'










end
