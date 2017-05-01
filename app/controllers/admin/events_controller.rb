class Admin::EventsController < ApplicationController
  before_action :authenticate_user!
  before_action :user_admin?
    def index
        @meetups = MeetupGroup.all
        # @events = Event.all.order('start_time ASC')
    end

    def create
        meetup_params = params.require(:admin_events_path).permit([:name])
        @meetup = MeetupGroup.new meetup_params
        @meetup.save
        add_to_events_table(@meetup.name)
        redirect_to admin_events_path
        @event = Event.new
    end

    def destroy
        @meetup = MeetupGroup.find(params[:id])
        @meetup.destroy
        remove_from_events_table(@meetup.name)

        redirect_to admin_events_path
    end

    private

    def add_to_events_table(new_meetup)
        meetups = MeetupClientRails::Events.all(new_meetup, { page: 20 })
        meetups.each do |meetup|
            Event.create({
                name: meetup.name,
                urlname: meetup.group['urlname'].downcase,
                start_time: Time.at(meetup.time/1000-28800), #1000 = ms -> s, 28800 -> -8 hours for PST
                desc: meetup.description
            })
        end
    end

    def remove_from_events_table(meetup_name)
        meetup_name.downcase!
        @events = Event.where(urlname: meetup_name)
        @events.destroy_all
    end

end
