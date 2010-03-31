module VenueHelper
  
  def venue_map(v)
    content_tag(:h3, "Location") + v.google_maps_location
  end
  
  
  def venue_event_list(v)
    content_tag(:h3, "Events") + v.events.collect {|e| content_tag(:li, link_to(e.name, e))}.join("\n")
  end
  
end
