class PurchasesController < ApplicationController
  def new
    @purchase = Purchase.new
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
