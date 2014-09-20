class CreateUserTagScores < ActiveRecord::Migration
  def change
    create_table :user_tag_scores do |t|
      t.references :tag, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
