class Item < ActiveRecord::Base

	self.inheritance_column = nil
	belongs_to :type
	
end
