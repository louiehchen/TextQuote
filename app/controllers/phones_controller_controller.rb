class PhonesControllerController < ApplicationController
	def new
		@phone = Phone.new
	end
end
