class Book
  belongs_to :author # author.book
  has_many :readings
  has_many :users, through: :readings
end
