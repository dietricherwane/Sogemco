class AddStatutToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :statut, :string
  end

  def self.down
    remove_column :users, :statut
  end
end
