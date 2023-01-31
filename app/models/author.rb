class Author
  has_many :books
  validates :name, presence: true
end
