class EventsController < ApplicationController
  def index
  @events = Event.all
  end

  def new
  @event = Event.new
  end

  def create
  @event = Event.new
	  @event.description = params_event[:description]
	  @event.date = params_event[:date]
	  @event.place = params_event[:place]
	  @event.creator = User.find(params_event[:creator_id])
	  if @event.save 
	  	redirect_to events_path
	  else 
	  	render 'new'
	  end
  end

  def show
    @event = Event.find(params[:id])
  end

  def suscribe
      
  end

    private
  def params_event
  	params.require(:event).permit(:description, :date, :place, :creator_id)
  end
end
