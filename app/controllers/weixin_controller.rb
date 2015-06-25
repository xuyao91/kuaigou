class WeixinController < ApplicationController
	layout 'weixin'
	PASSWORD = "123456"
	SHOP_URL = "http://wap.koudaitong.com/v2/home/9rd4k3xf"

	def check
		if params[:password].to_s == PASSWORD
			redirect_to SHOP_URL
		else
			redirect_to :back		
		end	
	end	
end	