class User
  has_many :readings
  has_many :books, through: :readings
end
# julien.books
