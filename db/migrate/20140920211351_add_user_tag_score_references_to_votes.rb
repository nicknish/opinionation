class AddUserTagScoreReferencesToVotes < ActiveRecord::Migration
  def self.up
    add_reference :votes, :user_tag_score, index: true
  end

  def self.down
    remove_reference :votes, :user_tag_score, index: true
  end
end
