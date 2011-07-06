class AddUserIdToNavigations < ActiveRecord::Migration
  def self.up
    add_column :navigations, :user_id, :integer
  end

  def self.down
    remove_column :navigations, :user_id
  end
end
