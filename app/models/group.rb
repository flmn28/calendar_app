class Group < ActiveRecord::Base

  #association
  has_many :users
  has_may :events
end
