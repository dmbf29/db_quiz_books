class Author < ActiveRecord::Base
  has_many :books # method -> author.books
  validates :name, presence: true
end
