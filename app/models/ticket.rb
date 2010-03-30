class Ticket < ActiveRecord::Base
  belongs_to :event
  
  def event_ticket_name
    "Undecided"
  end
end