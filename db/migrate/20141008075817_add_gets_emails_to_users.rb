class AddGetsEmailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :gets_mention_emails, :boolean, null: false, default: false
    add_column :users, :gets_question_emails, :boolean, null: false, default: false
  end
end
