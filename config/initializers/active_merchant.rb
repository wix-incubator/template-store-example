require 'active_merchant/billing/integrations/action_view_helper'
ActionView::Base.send(:include, ActiveMerchant::Billing::Integrations::ActionViewHelper)
if Settings.paypal.sandbox
  ActiveMerchant::Billing::Base.mode = :test
end
