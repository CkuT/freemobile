require 'freemobile/version'
require 'rest-client'

module Freemobile
  class API
    def initialize(user, pass)
      @url = 'https://smsapi.free-mobile.fr/sendmsg'
      @user = user
      @pass = pass
    end

    def send(msg)
      params = { user: @user, pass: @pass, msg: msg }
      RestClient::Request.execute(url: @url,
                                  method: 'GET',
                                  headers: { params: params },
                                  verify_ssl: false)
    end
  end
end
