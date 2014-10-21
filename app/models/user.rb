class User < ActiveRecord::Base
 
  has_secure_password
  
  has_many :posts
  has_many :answers
  has_many :votes
  has_many :favorites
  has_many :user_tag_scores
  has_many :tags, :through => :user_tag_scores
  #has_attached_file must appear before it's validations
  has_attached_file :profile_pic, styles: { large: "900X900>", medium: "640x640>", small: "100x100>" }, default_url: "images/:style/missing.png"

  #validations
  validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
  validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { in: 3..15 }, format: { with: /\A\W*\w+\W*\z/ }
  #need a validation to prevent space in username
  validates :fname, presence: true, length: { in: 2..30 }
  validates :lname, presence: true, length: { in: 2..30 }
  validates :password, presence: {if: :new_record?}, length: { in: 6..20 }, on: :create
  validates :password, length: { in: 6..20 }, on: :update, allow_blank: true

  validates_attachment :profile_pic, presence: true, content_type: { content_type: ["image/jpeg", "image/jpg", "image/gif", "image/png"] }

  def prep_username
    x = self.username.scan(/\A\W*(\w+)\W*\z/)
    self.username = x[0][0]
  end



  #user inputs before save
  before_save {[
    self.prep_username,
    self.email = email.downcase, 
    self.fname = fname.titleize, 
    self.lname = lname.titleize 
  ]}
  
  def to_param
    "#{username}"
  end

end
