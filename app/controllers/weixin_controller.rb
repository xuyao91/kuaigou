class WeixinController < ApplicationController
	layout 'weixin'
	PASSWORD = "famorly1320"
	SHOP_URL = "http://wap.koudaitong.com/v2/feature/tlhp2h2b"

	def check
		if params[:password].to_s == PASSWORD
			redirect_to SHOP_URL
		else
			redirect_to :back		
		end	
	end	
end	