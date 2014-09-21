class UserTagScore < ActiveRecord::Base
  belongs_to :tag
  belongs_to :user
  has_many :user_tag_score_votes
  has_many :votes, :through => :user_tag_score_votes

  validates :user, uniqueness: {scope: [:user, :tag]}
end
