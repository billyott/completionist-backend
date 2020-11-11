class ChangePriorityLevelDatatype < ActiveRecord::Migration[6.0]
  def change
    change_column :tasks, :priority_level, :string
  end
end
