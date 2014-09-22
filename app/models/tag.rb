class Tag < ActiveRecord::Base
	has_many :user_tag_scores
	has_many :post_tags
	has_many :posts, :through => :post_tags 
	has_many :users, :through => :user_tag_scores
end
