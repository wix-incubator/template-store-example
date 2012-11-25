class PurchasesController < ApplicationController
  def new
    session[:template_id] = params[:template_id]
    @purchase = Purchase.new(email: session[:wix_user_email])
    @purchase.template = Template.find(params[:template_id])
  end

  def create
    @purchase = Purchase.new(params[:purchase])

    if @purchase.save
      redirect_to @purchase
    else
      render :action => "new"
    end
  end

  def show
    @purchase = Purchase.find(params[:id])
  end

end
