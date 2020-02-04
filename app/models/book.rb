class Book < ActiveRecord::Base
	belongs_to :author
	# Allows me to use book.author
	has_many :readings
	has_many :users, through: :readings
end
