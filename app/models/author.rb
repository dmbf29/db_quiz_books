class Author < ActiveRecord::Base
	has_many :books
	# def books
	# 	Book.where(author_id: id)
	# end
	validates :name, presence: true, uniqueness: true
end
