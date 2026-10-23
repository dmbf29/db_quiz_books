class Book < ActiveRecord::Base
  # associations
  # has_many # my foreign key is in another table
  # belongs_to # i'm holding that foreign key
  belongs_to :author
  has_many :readings
  has_many :users, through: :readings
end
