class Vote < ActiveRecord::Base
  belongs_to :user
  belongs_to :answer
  has_many :user_tag_score_votes
  has_many :user_tag_scores, :through => :user_tag_score_votes
  validates :user_id, uniqueness: {scope: [:user_id, :answer_id]}

  def score_maker
		a = self.answer # an Answer, belongs to the Vote that was just created
		y  = a.post.tags # a collection of Tags used when posting the Post where the vote happened
		z = a.user # our Answerer on the voted Answer 

		y.all.each do |h|
		  
			b = UserTagScore.where(user:z, tag:h).first
			if b == nil
			  c = UserTagScore.create(user:z, tag:h, score:1)
			  UserTagScoreVote.create(user_tag_score: c, vote: self)
			else
			  c = UserTagScoreVote.create(user_tag_score: b, vote: self, score:0)
			  c.score += 1
			  c.save
			end
		end
  end
end
