class Order < ActiveRecord::Base
	belongs_to :profile
	# has_one :profile
	accepts_nested_attributes_for :profile

	# TODO add validations
	def date_and_time_created
		self.created_at.strftime("%d.%m.%Y в %H:%M")
	end	

end
