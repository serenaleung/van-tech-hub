class EventsController < ApplicationController
  def index
    @events = Event.all.order('start_time ASC')
  end
end
