ActionController::Routing::Routes.draw do |map|
  map.resources :tweets, :only => [ :index, :show ]
  map.resources :people, :only => [ :show ]
  map.root :controller => "tweets"
end
