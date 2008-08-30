class CreateSteps < ActiveRecord::Migration
  def self.up
    create_table :steps do |t|
      t.date :date
      t.float :hours
      t.float :percentage
      t.integer :employee_id
      t.integer :subtask_id

      t.timestamps
    end
  end

  def self.down
    drop_table :steps
  end
end
