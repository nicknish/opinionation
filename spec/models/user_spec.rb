require 'rails_helper'

RSpec.describe User, :type => :model do
  before { @user = User.create!(email: 'shawn@shawn.com', username:'shawnye', fname:'shawn', lname: 'Yeezus', password: 'password', password_confirmation: 'password') }

  subject { @user }
   
    it { should have_many(:posts) }
    it { should have_many(:answers) }
    it { should have_many(:votes) }
    it { should have_many(:favorites) }

    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:username) }
    it { should validate_presence_of(:fname) }
    it { should validate_presence_of(:lname) }
#    it { should validate_presence_of(:password) }

    it { should validate_uniqueness_of(:email) }
    it { should validate_uniqueness_of(:username) }
    it { should_not allow_value('breaegnt').for(:email) }
end    
