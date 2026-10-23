class Reading < ActiveRecord::Base
  # associations
  # has_many # my foreign key is in another table
  # belongs_to # i'm holding that foreign key
  belongs_to :user
  belongs_to :book
end
