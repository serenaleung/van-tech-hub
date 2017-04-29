class Admin::EventsController < ApplicationController
    def index
        # render admin events page
        # @meetup = MeetupGroup.new
        @meetups = MeetupGroup.all
    end
    
    def create
        meetup_params = params.require(:admin_events_path).permit([:name])
        @meetup = MeetupGroup.new meetup_params
        @meetup.save
        redirect_to admin_events_path
    end
    
    def destroy
        @meetup = MeetupGroup.find(params[:id])
        @meetup.destroy
        redirect_to admin_events_path
    end
end
