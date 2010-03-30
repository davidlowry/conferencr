class TicketsController < ApplicationController
  
  def index;
    @tickets = Ticket.all
  end
  
  def show
    @ticket = Ticket.find(params[:id])
  end
  
  def new
    @ticket = Ticket.new
    @ticket.event = Event.find(params[:event_id])
  end
  
  def create
    @ticket = Ticket.new(params[:ticket])
    if @ticket.save
      redirect_to @ticket
    else
      render :new
    end
  end

  def edit; end
  def update; end

end
