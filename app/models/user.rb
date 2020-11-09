class User < ApplicationRecord
    has_many :tasks
    has_many :subtasks, through: :tasks
end
