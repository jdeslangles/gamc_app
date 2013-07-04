GamcApp::Application.routes.draw do

  # get "cars/index"
  # get "cars/show"
  # get "cars/edit"
  # get "cars/update"
  # get "cars/delete"
  # get "cars/create"
  # get "cars/new"

resources :cars

root to: 'cars#index'

end
