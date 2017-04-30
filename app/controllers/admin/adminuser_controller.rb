class Admin::AdminuserController < ApplicationController

def edit
@user = User.find params[:id]

end

def update
@user = User.find params[:id]
user_params = require(:user).permit([:first_name, :last_name])
@user.update(user_params)
redirect_to admin_index_path, notice: 'User updated!'

end
def destroy
  @user = User.find params[:id]
  @user.destroy
  redirect_to admin_index_path, notice: 'User deleted!'


end


end
