  class OrganizationsController < ApplicationController

    def new
    @organization = Organization.new
    end

    def index
      @organizations = Organization.all.order('created_at DESC')
    end

    def show
          @organization = Organization.find params[:id]
          @technology = Technology.new
      end

    def create
      @organization = Organization.new organization_params
      if @organization.save
        redirect_to organization_path(@organization)
      else
        render :new
      end
    end

      private

        def find_organization
          @organization = Organization.find params[:id]
        end

        def organization_params
          params.require(:organization).permit([:name, :manager, :website, :twitter, :overview, { technology_id: [] } ])
        end

  end
