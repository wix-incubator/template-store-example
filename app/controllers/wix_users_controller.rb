class WixUsersController < ApplicationController
  def new
    @wix_user = WixUser.new
  end

  def create

    @wix_user = WixUser.new(params[:wix_user])

    if @wix_user.save
      session[:wix_user_email] = @wix_user.email
      redirect_to new_purchase_path(template_id: session[:template_id])
    else
      render :action => "new"
    end
  end

end
