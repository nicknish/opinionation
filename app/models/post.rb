class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  has_many :answers

    #user profile picture upload using paperclip gem
  has_attached_file :post_pic, styles: { large: "900X900>", medium: "640x640>", small: "100x100>" }, default_url: "images/:style/missing.png"
end
