class AddVerifiedUserAndDeactivatedUserToUsers < ActiveRecord::Migration
    def self.up
    change_table :users do |t|
      t.boolean :verified_user, default: false
      t.boolean :deactivated_user, default: false
    end
  end

  def self.down
    remove_column :users, :verified_user
    remove_column :users, :deactivated_user
  end
end
