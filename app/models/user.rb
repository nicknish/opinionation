class User < ActiveRecord::Base
  has_many :posts
  has_many :answers
  has_many :votes
  has_many :favorites

  #user profile picture upload using paperclip gem
  has_attached_file :profile_pic, styles: { large: "900X900>", medium: "640x640>", small: "100x100>" }, default_url: "images/:style/missing.png"

end
