class ContactsController < ApplicationController
  def new
  end

  def create
    ContactMailer.contact(params[:contact]).deliver
    flash[:notice] = "Your question will be delivered soon :)"
    redirect_to "/"
  end
end
