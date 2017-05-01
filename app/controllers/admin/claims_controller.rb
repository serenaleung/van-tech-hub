class Admin::ClaimsController < ApplicationController


def update
@user = User.find params[:id]

@user.update({org_approved: true})
redirect_to admin_index_path, notice: 'Approved!'
end

def destroy
  @user = User.find params[:id]

  @user.update({organization_id: nil, org_approved: nil})
  redirect_to admin_index_path, alert: 'Rejected!'
  end


end
