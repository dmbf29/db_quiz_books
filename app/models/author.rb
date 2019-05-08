class Author < ActiveRecord::Base
  has_many :books
  has_many :readings, through: :books

  validates :name, presence: true
  # validate :check_for_name

  # def check_for_name
  #   if name.nil?
  #     errors.add()
  #   end
  # end
  # no!!!!!!!!!!
end
