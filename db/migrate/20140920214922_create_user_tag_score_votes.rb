class CreateUserTagScoreVotes < ActiveRecord::Migration
  def change
    create_table :user_tag_score_votes do |t|
      t.references :user_tag_score, index: true
      t.references :vote, index: true

      t.timestamps
    end
  end
end
