class EventsController < ApplicationController
  before_action :authenticate_user!

  def index
    @events = Event.all.order('start_time ASC')
  end
end
