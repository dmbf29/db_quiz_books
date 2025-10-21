class Author < ActiveRecord::Base
  has_many :books # jules.books
  has_many :readings, through: :books # jules.books
  validates :name, presence: true
end
