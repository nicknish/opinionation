class UserTagScore < ActiveRecord::Base
  belongs_to :tag
  belongs_to :user
  has_many :votes
end
