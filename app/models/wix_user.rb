class WixUser
  extend ActiveModel::Naming
  include ActiveModel::Conversion
  include ActiveModel::AttributeMethods
  include ActiveModel::Validations

  define_attribute_methods ['email', 'password']
  attr_accessor :email, :password

  validates :email, format:  { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i }
  validate :email_uniqueness
  validates :password, presence: true

  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def self.find_by_email(email)
    begin
      response =  WIX_API.get("/api/v1/users/#{email}")
    rescue Faraday::Error::ResourceNotFound
      return nil
    end

    JSON.parse(response.body)
  end

  def persisted?
    false
  end

  def save
    if self.valid?
      WIX_API.post do |req|
        req.url '/api/v1/users'
        req.body = { email: email, password: password }.to_query
      end
    end
  end

  def email_uniqueness
    if self.class.find_by_email(email)
      errors.add(:email, "Alredy registered on wix.com")
    end
  end
end