class EventsController < ApplicationController
  
  def index;
    @events = Event.all
  end
  
  def show
    @event = Event.find(params[:id])
  end
  
  def new
    @event = Event.new
  end
  
  def create
    @event = Event.new(params[:event])
    if @event.save
      redirect_to @event
    else
      render :new
    end
  end

  def edit; end
  def update; end

end
