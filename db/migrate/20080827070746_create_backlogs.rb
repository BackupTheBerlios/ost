class CreateBacklogs < ActiveRecord::Migration
  def self.up
    create_table :backlogs do |t|
      t.string :name
      t.date :date
      t.integer :priority
      t.text :description
      t.boolean :done

      t.timestamps
    end
  end

  def self.down
    drop_table :backlogs
  end
end
