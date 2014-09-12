require 'rails_helper'

RSpec.describe Category, :type => :model do
  before  { @category = Category.create!(name:'hotchicks') }

  subject { @category }

    it { should have_many(:posts)}

    it { should validate_uniqueness_of(:name) }

    it { should validate_presence_of(:name) }


end
