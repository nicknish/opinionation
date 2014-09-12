require 'rails_helper'

RSpec.describe Favorite, :type => :model do
  before { @favorite = Favorite.create! }

  subject { @favorite } 

    it { should belong_to(:user) }
    it { should belong_to(:post) }
end
