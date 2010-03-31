class TicketsController < ApplicationController
  
  def index;
    @event = Event.find_by_id(params[:event_id])
    if @event
      @tickets = @event.tickets
    else
      @tickets = Ticket.all
    end

  end
  
  def show
    @ticket = Ticket.find(params[:id])
    @event = @ticket.event
  end
  
  def new
    @ticket = Ticket.new
    @ticket.event = Event.find(params[:event_id])
  end
  
  def create
    @ticket = Ticket.new(params[:ticket])
    if @ticket.save
      redirect_to [@ticket.event, @ticket]
    else
      flash[:errors] = @ticket.errors.full_messages.to_sentence
      render :new
    end
  end

  def edit; end
  def update; end

  def purchase
    @ticket = Ticket.find(params[:ticket_id])
    @event = @ticket.event
    
  end
end
