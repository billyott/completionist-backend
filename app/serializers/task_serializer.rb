class TaskSerializer < ActiveModel::Serializer
  attributes :id, :title, :priority_level, :due_date, :tag, :description, :completion_status
  has_many :subtasks
  #belongs_to :user
end
