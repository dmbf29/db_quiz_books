class User < ActiveRecord::Base
  # associations
  # has_many # my foreign key is in another table
  # belongs_to # i'm holding that foreign key
  has_many :readings
  has_many :books, through: :readings
  has_many :authors, through: :books
end
