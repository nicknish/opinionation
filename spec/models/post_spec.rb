require 'rails_helper'

RSpec.describe Post, :type => :model do
  before { @post = Post.create!(question:"What is a javascript?") }

  subject { @post }

    it { should have_many(:answers) }
    it { should belong_to(:user) }
    it { should belong_to(:category) }

    it { should validate_presence_of(:question) }
    it { should ensure_length_of(:question).is_at_least(5).is_at_most(100) }

    it { should validate_attachment_content_type(:post_pic).allowing('image/png', 'image/gif', 'image/jpeg', 'image/jpg') }

end
