class SubtaskSerializer < ActiveModel::Serializer
  attributes :id, :title, :completion_status
  #belongs_to :task
end
