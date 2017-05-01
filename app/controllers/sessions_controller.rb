class SessionsController < ApplicationController

def new

end

def create
  @user = User.find_by_email params[:email]
  if @user&.authenticate(params[:password])
    session[:user_id] = @user.id
    if @user.is_admin?
    redirect_to organizations_path, notice: 'You are signed in as Admin'
    else
    redirect_to edit_organization_path(@user.organization_id), notice: 'Thank you for signing in! Is there any update on your organization?'
  end
  else
    flash.now[:alert] = 'Wrong credentials!'
    render :new
  end
end

def destroy
  session[:user_id] = nil
  redirect_to new_session_path, notice: 'Signed Out'
end
end
