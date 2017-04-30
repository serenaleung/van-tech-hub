class TechnologiesController < ApplicationController
  def index
   @technologies = Technology.all
  end

  def new
   @technology = Technology.new
  end

  def create
     technology_params = params.require(:technology).permit([:language])
     @technology = Technology.new technology_params
     if @technology.save
     redirect_to technologies_path
    else
      render :new
    end
  end


end
