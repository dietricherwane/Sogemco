class CreateNavigations < ActiveRecord::Migration
  def self.up
    create_table :navigations do |t|
      t.string :compagnie
      t.string :navire
      t.string :pavillon
      t.string :type_navire
      t.string :fonction_occupee
      t.date :date_embarquement
      t.date :date_debarquement

      t.timestamps
    end
  end

  def self.down
    drop_table :navigations
  end
end
