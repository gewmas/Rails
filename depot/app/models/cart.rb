class Cart < ActiveRecord::Base
	# The existence of line items is dependent on the existence of the cart.
	has_many :line_items, :dependent => :destroy

	
end
