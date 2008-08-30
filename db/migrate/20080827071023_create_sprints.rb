class CreateSprints < ActiveRecord::Migration
  def self.up
    create_table :sprints do |t|
      t.string :name
      t.date :startdate
      t.date :enddate
      t.text :description
      t.boolean :actualsprint
      t.float :holydays

      t.timestamps
    end
  end

  def self.down
    drop_table :sprints
  end
end
