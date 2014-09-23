class AddTagsColumnToPostsTable < ActiveRecord::Migration
  def self.up
    add_column :posts, :temptags, :string
  end

  def self.down
    remove_column :posts, :temptags, :string 
  end
end
