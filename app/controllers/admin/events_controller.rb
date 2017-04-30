class Admin::EventsController < ApplicationController
    def index
        @meetups = MeetupGroup.all
        # @events = Event.all.order('start_time ASC')
    end
    
    def create
        meetup_params = params.require(:admin_events_path).permit([:name])
        @meetup = MeetupGroup.new meetup_params
        @meetup.save
        update_events_table(@meetup.name)
        redirect_to admin_events_path
        @event = Event.new
    end
    
    def destroy
        @meetup = MeetupGroup.find(params[:id])
        @meetup.destroy
        @event = Event.find(params[:id]) #this could break easily if IDs get mismatched, should be referenced or something
        @event.destroy
        redirect_to admin_events_path
    end
    
    private
    
    def update_events_table(new_meetup)
        meetups = MeetupClientRails::Events.all(new_meetup, { page: 20 })
        meetups.each do |meetup|
            Event.create({
                name: meetup.name, 
                start_time: Time.at(meetup.time), 
                desc: meetup.description
            })
        end
    end

end
