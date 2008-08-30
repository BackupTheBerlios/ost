class CreateSubtasks < ActiveRecord::Migration
  def self.up
    create_table :subtasks do |t|
      t.string :name
      t.integer :priority
      t.float :hourguess
      t.float :riskguess
      t.text :description
      t.integer :task_id
      t.integer :employee_id
      t.integer :category_id

      t.timestamps
    end
  end

  def self.down
    drop_table :subtasks
  end
end
