class AdminController < ApplicationController
  before_action :authenticate_user!
  before_action :user_admin?
    def events
        # render admin events page
        @meetup = MeetupGroup.new
        @meetups = MeetupGroup.all
        puts 'ha'
    end

    def events_post
        product_params = params.require(:MeetupGroup).permit([:name])
        @meetup = MeetupGroup.new product_params
        @meetup.save
    end

    def events_destroy
        # delete meetup group from table
    end
def index
  @users = User.all
end

end
