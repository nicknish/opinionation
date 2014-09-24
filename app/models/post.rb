class Post < ActiveRecord::Base

  belongs_to :user
  belongs_to :category
  has_many :answers, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :post_tags, dependent: :destroy
  has_many :tags, :through => :post_tags

  validates :question, presence: true, length: { in: 5..100 }
  # validates :user_id, presence: true 

   # user profile picture upload using paperclip gem
  has_attached_file :post_pic, styles: { large: "900X900>", medium: "640x640>", small: "100x100>" }, default_url: "images/:style/missing.png"

  validates_attachment :post_pic, content_type: {content_type: ["image/jpeg", "image/jpg", "image/gif", "image/png"]}

  def associate_tags
    x = self.temptags.tr('#','').tr(',','')
    y = x.split(" ")

    y.each do |z|
      if Tag.exists?(:name => z)
        a = Tag.where(:name => z).first
        PostTag.create(tag:a, post:self)
      else
        a = Tag.create(name:z)
        PostTag.create(tag:a, post:self)
      end
    end
  end

end
