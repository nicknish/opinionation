class User < ActiveRecord::Base
 
  has_secure_password
  
  has_many :posts
  has_many :answers
  has_many :votes
  has_many :favorites

  #validations
  validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }

  validates :username, presence: true, uniqueness: { case_sensitive: false }
  validates :fname, presence: true, length: { in: 2..30 }
  validates :lname, presence: true, length: { in: 2..30 }
  validates :password, presence: true, length: { in: 6..20 }

  has_attached_file :profile_pic, styles: { large: "900X900>", medium: "640x640>", small: "100x100>" }, default_url: "images/:style/missing.png"

end
