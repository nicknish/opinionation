class CreatePostTags < ActiveRecord::Migration
  def change
    create_table :post_tags do |t|
      t.references :tag, index: true
      t.references :post, index: true

      t.timestamps
    end
  end
end
