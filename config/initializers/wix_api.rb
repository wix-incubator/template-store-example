require 'faraday/request/hmac'
WIX_API = Faraday.new(:url => "http://api.wix.com") do |builder|
  builder.headers['X-Public-Key'] = Settings.wix_api.public
  builder.use      Faraday::Request::Hmac, Settings.wix_api.secret
  builder.adapter  :net_http
  builder.request  :url_encoded
  builder.response :raise_error
end
