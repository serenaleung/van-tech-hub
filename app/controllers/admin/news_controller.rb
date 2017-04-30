class Admin::NewsController < ApplicationController
    def index
        @search_terms = SearchTerm.all
    end
    
    def create
        search_params = params.require(:admin_news_path).permit([:search_term])
        @search_term = SearchTerm.new search_params
        @search_term.save
        add_to_news_table(@search_term.search_term)
        redirect_to admin_news_index_path
    end
    
    
    def destroy
        
    end
    
    private
    
    def add_to_news_table(search_term)
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
end
