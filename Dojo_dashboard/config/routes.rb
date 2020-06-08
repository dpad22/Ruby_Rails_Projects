Rails.application.routes.draw do

  get 'dojos' => 'dojos#index', as: 'dojos'

  get 'dojos/new'

  get 'dojos/:id/edit' => 'dojos#edit', as: 'editPizza'

  get 'dojos/:id' => 'dojos#show', as: 'showDojo'

  post 'dojos' => 'dojos#create'

  post 'dojos/:id' => 'dojos#update'

  delete 'dojos/:id' => 'dojos#destroy'

  root 'dojos#index'
end
