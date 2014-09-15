class User < ActiveRecord::Base
 
  has_secure_password
  
  has_many :posts
  has_many :answers
  has_many :votes
  has_many :favorites
  #has_attached_file must appear before it's validations
  has_attached_file :profile_pic, styles: { large: "900X900>", medium: "640x640>", small: "100x100>" }, default_url: "images/:style/missing.png"

  #validations
  validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
  validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { in: 3..15 }
  #need a validation to prevent space in username
  validates :fname, presence: true, length: { in: 2..30 }
  validates :lname, presence: true, length: { in: 2..30 }
  validates :password, presence: true, length: { in: 6..20 }
  validates_attachment :profile_pic, presence: true, content_type: { content_type: ["image/jpeg", "image/jpg", "image/gif", "image/png"] }

  #formatting user inputs before save
  before_save {[
    self.email = email.downcase, 
    self.fname = fname.titleize, 
    self.lname = lname.titleize 
  ]}
  
end
