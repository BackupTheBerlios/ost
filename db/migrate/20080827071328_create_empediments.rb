class CreateEmpediments < ActiveRecord::Migration
  def self.up
    create_table :empediments do |t|
      t.string :name
      t.integer :priority
      t.text :description
      t.text :ideas
      t.boolean :solved
      t.integer :sprint_id

      t.timestamps
    end
  end

  def self.down
    drop_table :empediments
  end
end
