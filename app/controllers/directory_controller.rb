class DirectoryController < ApplicationController
  before_action :authenticate_user!

  def index
    if Organization.count == 0
    end
    @organizations = Organization.paginate(:page => params[:page], per_page: 9)
    @orgs = []
    i = 1
    @organizations.each do |org|
      if org.latitude != nil
        @orgs.push([org.name, org.latitude, org.longitude, i])
        i += 1
      end
    end

    # if params[:search]
    #   @organizations = Organization.search(params[:search]).order("created_at DESC")
    # else
    #   @organizations = Organization.all.order("created_at DESC")
    # end
  end
end
