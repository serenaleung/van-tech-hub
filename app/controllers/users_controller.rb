class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    if user_params['password_digest'] == user_params['password_confirmation']
      test = user_params
      test.delete('password_confirmation')
      @user = User.new(test)
      if @user.save
        session[:user_id] = @user.id
        redirect_to organizations_path, notice: 'Thank you for signing up'
      else
        render :new
      end
    else
      redirect_to new_user_path, alert: 'passwords must match!'
    end
  end

  private

  def user_params
    params.require(:user).permit([:first_name,
                                  :last_name,
                                  :email,
                                  :password_digest,
                                  :password_confirmation])
  end

end
