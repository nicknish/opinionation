class Post < ActiveRecord::Base

  belongs_to :user
  belongs_to :category
  has_many :answers
  has_many :favorites
  has_many :tags, :through => :post_tags

  validates :question, presence: true, length: { in: 5..100 }

   # user profile picture upload using paperclip gem
  has_attached_file :post_pic, styles: { large: "900X900>", medium: "640x640>", small: "100x100>" }, default_url: "images/:style/missing.png"

  validates_attachment :post_pic, content_type: {content_type: ["image/jpeg", "image/jpg", "image/gif", "image/png"]}

end
