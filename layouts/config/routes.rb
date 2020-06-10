Rails.application.routes.draw do
  get 'posts' => 'posts#index', as: 'posts'

  get 'posts/new'

  post 'posts' => 'posts#create'

  get 'users' => 'users#index', as: 'users'

  get 'users/new'

  post 'users' => 'users#create'

end
