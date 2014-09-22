class DropUserTagScoreReferencesFromVotes < ActiveRecord::Migration
  def self.up
    remove_reference :votes, :user_tag_score, index: true
  end

  def self.down
    add_reference :votes, :user_tag_score, index: true
  end
end
