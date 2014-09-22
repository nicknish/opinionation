class UserTagScoreVote < ActiveRecord::Base
  belongs_to :user_tag_score
  belongs_to :vote

  validates :user_tag_score, uniqueness: {scope: [:user_tag_score, :vote]}
end
