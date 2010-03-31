class Ticket < ActiveRecord::Base
  belongs_to :event
  
  validate do |ticket|
    names_for_event = ticket.event.tickets.collect {|t| t.ticket_name}
    ticket.errors.add_to_base("Event ticket name must be unique") if names_for_event.include? ticket.ticket_name
    ticket.errors.add_to_base("Event price must be specified (even if it is £0)") if ticket.price_pounds.nil? || ticket.price_pounds==""
  end
  
  def event_ticket_name
    self.event.name + " " + self.ticket_name
  end
  
end