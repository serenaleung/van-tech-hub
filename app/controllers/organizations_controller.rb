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
      @organization = Organization.new(super_org_params)

      if @organization.save
        redirect_to organization_path(@organization)
      else
        render :new
      end
    end

    def edit

      @organization = Organization.find params[:id]
      @user = current_user

    end


    def update
    @organization = Organization.find params[:id]

    @organization.update(super_org_params)
    redirect_to organization_path(@organization), notice: 'Organization updated!'
  end


    def confirm
      @organization = Organization.find params[:id]
      @user = current_user

    end

    def update_confirm
      @organization = Organization.find params[:id]
      @user = current_user
      @user.update({organization_id: params[:id], org_approved: false})
      redirect_to organization_path(@organization), notice: 'Thanks for claming. We will get back to you soon!'
    end


    def destroy
           @organization = Organization.find params[:id]
             @organization.destroy
             redirect_to organizations_path, notice: 'Organization Deleted💀'
      end


      private

        def find_organization
          @organization = Organization.find params[:id]
        end

        def organization_params
          params.require(:organization).permit([:name, :manager, :website, :twitter, :overview, :avatar])
        end

        def super_org_params
          organization_params.merge({adapted_technologies: (params[:organization][:adapted_technologies] || []).map{ |x| Technology.find(x) unless x.blank?}.compact})
        end


  end
