class Reading < ActiveRecord::Base
  # if there is a foreign key, it's ALWAYS belongs_to
  belongs_to :user
  belongs_to :book
end
