class Purchase
  include Mongoid::Document
  field :email, type: String
  field :paid, type: Boolean
  field :wix_user_id

  belongs_to :template

  validate :email_should_exists_on_wix
  before_save :save_wix_user_id

  def email_should_exists_on_wix
    unless wix_user
      errors.add(:email, "not existing wix user")
    end
  end

  def save_wix_user_id
    self.wix_user_id = wix_user['id']
  end

  def wix_user
    @wix_user ||= WixUser.find_by_email(email)
  end
end
