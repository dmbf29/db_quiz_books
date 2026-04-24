class Book < ActiveRecord::Base
  belongs_to :author # book.author / book.author = ?
  has_many :readings
  has_many :users, through: :readings
end
