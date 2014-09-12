require 'rails_helper'

RSpec.describe Vote, :type => :model do
  before { @vote = Vote.create! }
  
  subject { @vote }

    it { should belong_to(:user) }
    it { should belong_to(:answer) }
end
