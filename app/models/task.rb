class Task < ApplicationRecord
    belongs_to :user, optional: true
    has_many :subtasks
end
