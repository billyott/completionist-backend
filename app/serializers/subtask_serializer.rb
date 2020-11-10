class SubtaskSerializer < ActiveModel::Serializer
  attributes :id, :title, :completion_status, :task_id
end
