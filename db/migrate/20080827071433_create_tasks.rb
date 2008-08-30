class CreateTasks < ActiveRecord::Migration
  def self.up
    create_table :tasks do |t|
      t.string :name
      t.integer :priority
      t.text :description
      t.integer :sprint_id
      t.integer :backlog_id
      t.integer :bug_id

      t.timestamps
    end
  end

  def self.down
    drop_table :tasks
  end
end
