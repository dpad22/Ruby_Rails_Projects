Rails.application.routes.draw do

  get 'dojos' => 'dojos#index', as: 'dojos'

  get 'dojos/new'

  get 'dojos/edit'

  get 'dojos/show'

  post 'dojos' => 'dojos#create'

  root 'dojos#index'
end
