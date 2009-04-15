class CreateTasks < ActiveRecord::Migration
  def self.up
    create_table :tasks, :force => true do |t|
      t.string :name
      t.text :description
      t.integer :priority
      t.string :status
      t.integer :user_id, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :tasks
  end
end
