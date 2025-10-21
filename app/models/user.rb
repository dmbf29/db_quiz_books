class User < ActiveRecord::Base
  has_many :readings
  has_many :books, through: :readings
  has_many :authors, through: :books # user.authors
end
