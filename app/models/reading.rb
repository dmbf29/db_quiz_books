class Reading < ActiveRecord::Base
  belongs_to :book
  belongs_to :user

  def author
    book.author
  end
end
