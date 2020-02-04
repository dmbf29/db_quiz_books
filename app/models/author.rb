class Author < ActiveRecord::Base
	has_many :books
	# Allows me to use author.books

	validates :name, uniqueness: true
end

