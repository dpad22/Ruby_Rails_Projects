Rails.application.routes.draw do

  get 'dojos' => 'dojos#index'

  get 'dojos/new'

  get 'dojos/edit'

  get 'dojos/show'

root 'dojo#index'

end
