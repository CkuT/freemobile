require "freemobile/version"
require 'rest-client'

module Freemobile
  class API
	  def initialize(user,pass)
	  	@url = "https://smsapi.free-mobile.fr/sendmsg"
	  	@user = user
	  	@pass = pass
	  end

	  def send(msg)
	  	RestClient.get @url, {:params => {user: @user, pass: @pass, msg: msg}}
	  end
  end
end
