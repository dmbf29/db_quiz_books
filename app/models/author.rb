class Author < ActiveRecord::Base
  # associations
  has_many :books
  has_many :readings, through: :books
  has_many :users, through: :readings
  # validation
  validates :name, presence: true
end
