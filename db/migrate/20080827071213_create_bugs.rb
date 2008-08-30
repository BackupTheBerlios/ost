class CreateBugs < ActiveRecord::Migration
  def self.up
    create_table :bugs do |t|
      t.string :name
      t.integer :component_id
      t.integer :priority
      t.date :date
      t.boolean :fixed
      t.text :description
      t.integer :status
      t.integer :employee_id

      t.timestamps
    end
  end

  def self.down
    drop_table :bugs
  end
end
