class Author < ActiveRecord::Base
  has_many :books  # author.books
  # has_many :readings, through: :books
  # has_many :users, through: :readings
  # validates :column_name, whatever_validation
  validates :name, presence: true
end
