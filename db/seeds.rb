# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
billy = User.create(username: "billyott", first_name: "Billy", last_name: "Ott")
brian = User.create(username: "brianf", first_name: "Brian", last_name: "Feldman")

task1 = Task.create(title: "buy food", priority_level: 1, due_date: "11/9/2020", tag: "food", description: "take a guess", completion_status: false, user_id: billy.id)

subtask1 = Subtask.create(title: "buy soda", task_id: task1.id)