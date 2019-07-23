class Author < ActiveRecord::Base
  has_many :books
  validates :name, presence: true, uniqueness: true

  before_validation :do_something
  after_validation :do_something
  before_save :do_something
  after_save :do_something
end



book.save
# checks validations
# saves to DB
