MorePaginateExample::Application.routes.draw do
  resources :tweets
  resources :people
  match '/' => 'tweets#index'
end