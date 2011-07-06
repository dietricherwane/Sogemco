class CreateCrewmanagements < ActiveRecord::Migration
  def self.up
    create_table :crewmanagements do |t|
      t.string :fonction

      t.timestamps
    end
  end

  def self.down
    drop_table :crewmanagements
  end
end
