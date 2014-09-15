class Favorite < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  validates :user_id, uniqueness: {scope: [:user_id, :post_id]}

end
