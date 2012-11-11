class WixUser

  def self.find_by_email(email)
    begin
      response =  WIX_API.get("/api/v1/users/#{email}")
    rescue Faraday::Error::ResourceNotFound
      return nil
    end

    JSON.parse(response.body)
  end
end