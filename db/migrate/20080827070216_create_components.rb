class CreateComponents < ActiveRecord::Migration
  def self.up
    create_table :components do |t|
      t.string :name
      t.string :handle
      t.text :description
      t.integer :employee_id

      t.timestamps
    end
  end

  def self.down
    drop_table :components
  end
end
