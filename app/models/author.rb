class Author < ActiveRecord::Base)
  has_many :books

  validates :name, presence: true
end


# students = %w(adis adis harrison sherly junki ivan mike mike jack kumi james yuki david ryo jeff francis chris)
