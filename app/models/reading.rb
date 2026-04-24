class Reading < ActiveRecord::Base
  belongs_to :book # holding the foreign key
  belongs_to :user
end
