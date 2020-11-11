class TaskSerializer < ActiveModel::Serializer
  attributes :id, :title, :priority_level, :due_date, :tag, :description, :completion_status, :user_id
  has_many :subtasks
end
