class TechnologiesController < ApplicationController
  def index
   @technologies = Technology.order(:language)
   @technology = Technology.new
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

  def destroy
  @technology = Technology.find params[:id]
  @technology.destroy
  redirect_to technologies_path
  end


end
