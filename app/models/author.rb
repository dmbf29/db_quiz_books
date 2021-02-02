class Author < ActiveRecord::Base
  # associations and validations
  has_many :books # creates a method!
  # jules.books
  # validates :column, name_of_validation
  validates :name, presence: true
end
