class NotificationsController < ApplicationController
  include ActiveMerchant::Billing::Integrations
  skip_before_filter :verify_authenticity_token, :only => [:create, :return]

  def return
  end

  def cancel
    flash[:notice] = "We're sorry you didn't buy :("
    redirect_to root_path
  end

  def create
    begin
      notify = Paypal::Notification.new request.raw_post
      @purchase = Purchase.find(notify.item_id)

      if notify.acknowledge
        if notify.complete? and @purchase.template.price == BigDecimal.new( params[:mc_gross] )
          # Business logic
          @purchase.template.transfer_to(@purchase.wix_user_id)
          @purchase.update_attributes(:paid => true)
          render :nothing => true
        end
      end
    rescue Exception => e
      #log exceptions
      Rails.logger.error("Exception in PayPal Notifications: #{e.message}")
    end
  end
end
