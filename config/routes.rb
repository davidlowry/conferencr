ActionController::Routing::Routes.draw do |map|

  map.root :controller => :events
  
  map.resources :events
  
  map.connect ':event_name', :controller=>:events, :action=>:show

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'

end
