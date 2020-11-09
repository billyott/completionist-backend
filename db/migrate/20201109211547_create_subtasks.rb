class CreateSubtasks < ActiveRecord::Migration[6.0]
  def change
    create_table :subtasks do |t|
      t.string :title
      t.boolean :completion_status

      t.timestamps
    end
  end
end
