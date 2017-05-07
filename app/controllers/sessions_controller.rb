class SessionsController < ApplicationController

def new

end

def create
  @user = User.find_by_email params[:email]
  if @user&.authenticate(params[:password])
    session[:user_id] = @user.id
    if @user.is_admin?
    redirect_to admin_index_path
  elsif @user.organization_id

    redirect_to edit_organization_path(@user.organization_id)
  else
    redirect_to directory_index_path
  end
  else
    render :new
  end
end

def destroy
  session[:user_id] = nil
  redirect_to root_path
end
end
