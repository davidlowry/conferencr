ActionController::Routing::Routes.draw do |map|

  map.root :controller => :events

  map.current_cart 'cart', :controller => 'carts', :action => 'show', :id => 'current'
  map.purchase_ticket 'events/:event_id/ticket/:ticket_id/purchase', :controller=>:tickets, :action=>:purchase

  map.resources :events do |event|
    event.resources :tickets
  end
  
  map.resources :venues, :tickets, :purchase_items, :carts
  

  map.connect ':event_name', :controller=>:events, :action=>:show

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'

end
