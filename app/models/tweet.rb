class Tweet < ActiveRecord::Base


	def index
		Twitter.configure do |config|
		config.consumer_key = '16dYPItixjFviYjbJPKWbQ'
		config.consumer_secret = 'wnTWD3HGbzs3G2gnCKvCy85zGnSLmwuoRkH46680'
		config.consumer_token = '57489566-pTTKFBzi0nz2eKB7Cabv9BlFguWxTcHEvbsJVt9tF'
		config.consumer_token_secret = 'RYaGeaE1PoJ8agNI0ztP9VQC2h0Ad1S466d6vgj1Y'
		end
	end
	
	def message
	
		return "sin user" if self.user.blank?
		Twitter.user_timeline(self.user).first.text
		Twitter.user_timeline(self.user).last.text
	
	end

end
