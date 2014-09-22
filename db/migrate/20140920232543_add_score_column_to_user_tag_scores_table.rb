class AddScoreColumnToUserTagScoresTable < ActiveRecord::Migration
  def self.up
    add_column :user_tag_scores, :score, :integer
  end

  def self.down
    remove_column :user_tag_scores, :score 
  end
end
