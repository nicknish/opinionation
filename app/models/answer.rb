class Answer < ActiveRecord::Base
  belongs_to :post
  belongs_to :user
  has_many :votes

  validates :body, presence: true, length: { in: 2..139 }
end
