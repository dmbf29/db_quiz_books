class Author < ActiveRecord::Base
  has_many :books # creates a method -> author.books
  validates :name, presence: true
end
