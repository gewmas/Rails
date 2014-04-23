class StoreController < ApplicationController

	# helper
	def increment_counter
		if session[:counter].nil?
			session[:counter] = 0
		end
		session[:counter] += 1
	end


	def index
		@products = Product.all

		@count = increment_counter
	    @time = Time.now
	    @shown_message = "You've been here #{@count} times" if increment_counter >5
	end
end
