class Author < ActiveRecord::Base
  # associations
  # has_many # my foreign key is in another table
  # belongs_to # i'm holding that foreign key
  has_many :books # author.books
  has_many :readings, through: :books
  has_many :users, through: :readings
end
