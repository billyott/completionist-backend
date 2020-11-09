class AddTaskToSubtasks < ActiveRecord::Migration[6.0]
  def change
    add_reference :subtasks, :task, null: false, foreign_key: true
  end
end
