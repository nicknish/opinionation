require 'rails_helper'

RSpec.describe Answer, :type => :model do
  before { @answer = Answer.create!(body:"I am answer") }
  
  subject { @answer }

  it { should have_many(:votes) }
  it { should belong_to(:post) }
  it { should belong_to(:user) }

  it { should validate_presence_of(:body) }
  it { should ensure_length_of(:body).is_at_least(2) }
  it { should ensure_length_of(:body).is_at_most(139) }
end
