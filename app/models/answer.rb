class Answer < ActiveRecord::Base
  belongs_to :post
  belongs_to :user
  has_many :votes, dependent: :destroy

  validates :body, presence: true, length: { in: 2..139 }

  def mentioned_users
     mentions_raw = self.body.scan(/\B\@([\w\-]+)/im).to_set
     mentions_final = Set.new
     if mentions_raw.count > 0
       mentions_raw.each do |y|
         a = User.where(username:y).first
         if a != nil
           mentions_final.add(a)
  		 end
       end
       return mentions_final
     else
       return nil
     end
   end
end
