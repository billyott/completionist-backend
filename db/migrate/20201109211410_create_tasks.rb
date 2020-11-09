class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.integer :priority_level
      t.datetime :due_date
      t.string :tag
      t.string :description
      t.boolean :completion_status

      t.timestamps
    end
  end
end
