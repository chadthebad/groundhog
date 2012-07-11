Groundhog::Application.routes.draw do
  resources :albums
  resources :users
  resources :photos

  root :to => 'albums#index'

end
