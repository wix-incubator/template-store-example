class Template
  include Mongoid::Document
  field :name
  field :wix_meta_site_id
  field :image_url
  field :price, type: BigDecimal

  def transfer_to(wix_user_id)
    WIX_API.post do |req|
      req.url '/api/v1/transfers'
      req.body = { site_id: wix_meta_site_id, to_user_id: wix_user_id }.to_query
    end
  end
end