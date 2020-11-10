Subtask.destroy_all
Task.destroy_all
User.destroy_all

#billy's tasks
billy = User.create(username: "billyo", first_name: "Billy", last_name: "Ott")

o_task1 = Task.create(title: "grocery shopping", priority_level: 1, due_date: DateTime.new(2020, 11, 16), tag: "home stuff", description: "groceries, week of 11.16", completion_status: false, user_id: billy.id)
o_task2 = Task.create(title: "schedule vet appointment", priority_level: 5, due_date: DateTime.new(2020, 11, 16), tag: "dog stuff", description: "appt with Dr. Kahn", completion_status: false, user_id: billy.id)
o_task3 = Task.create(title: "renew license", priority_level: 4, due_date: DateTime.new(2020, 11, 18), tag: "life stuff", description: "expires 11.30!!", completion_status: false, user_id: billy.id)
o_task4 = Task.create(title: "mow lawn", priority_level: 1, due_date: DateTime.new(2020, 11, 19), tag: "home stuff", description: "neighbors are complaining... oops", completion_status: false, user_id: billy.id)
o_task5 = Task.create(title: "call Mom", priority_level: 3, due_date: DateTime.new(2020, 11, 20), tag: "life stuff", description: "fish for birthday gift ideas", completion_status: true, user_id: billy.id)

o_subtask1a = Subtask.create(title: "liquor store", completion_status: true, task_id: o_task1.id)
o_subtask1b = Subtask.create(title: "butcher", completion_status: false, task_id: o_task1.id)
o_subtask1c = Subtask.create(title: "farmer's market (veggies)", completion_status: false, task_id: o_task1.id)
o_subtask3a = Subtask.create(title: "book appt online", completion_status: true, task_id: o_task1.id)
o_subtask3b = Subtask.create(title: "fill out paperwork", completion_status: false, task_id: o_task1.id)
o_subtask4a = Subtask.create(title: "gas up lawn mower", completion_status: true, task_id: o_task1.id)
o_subtask4c = Subtask.create(title: "pick up lawn flamingos", completion_status: false, task_id: o_task1.id)

#brian's tasks
brian = User.create(username: "brianf", first_name: "Brian", last_name: "Feldman")

f_task1 = Task.create(title: "restock home goods", priority_level: 1, due_date: DateTime.new(2020, 11, 16), tag: "home stuff", description: "amazon prime stuff", completion_status: false, user_id: brian.id)
f_task2 = Task.create(title: "schedule vet appointment", priority_level: 5, due_date: DateTime.new(2020, 11, 16), tag: "dog stuff", description: "appt with Dr. Ritter", completion_status: false, user_id: brian.id)
f_task3 = Task.create(title: "renew passport", priority_level: 1, due_date: DateTime.new(2020, 11, 18), tag: "life stuff", description: "not that I'm traveling...", completion_status: false, user_id: brian.id)
f_task4 = Task.create(title: "paint family room", priority_level: 1, due_date: DateTime.new(2020, 11, 19), tag: "home stuff", description: "getting sick of that orange accent wall", completion_status: false, user_id: brian.id)
f_task5 = Task.create(title: "call Joe", priority_level: 3, due_date: DateTime.new(2020, 11, 20), tag: "life stuff", description: "ask him how the election went", completion_status: true, user_id: brian.id)

f_subtask1a = Subtask.create(title: "hand soap", completion_status: false, task_id: f_task1.id)
f_subtask1b = Subtask.create(title: "paper towels", completion_status: false, task_id: f_task1.id)
f_subtask1c = Subtask.create(title: "light bulbs", completion_status: false, task_id: f_task1.id)
f_subtask3a = Subtask.create(title: "fill out paperwork", completion_status: true, task_id: f_task1.id)
f_subtask3b = Subtask.create(title: "mail it out", completion_status: false, task_id: f_task1.id)
f_subtask4a = Subtask.create(title: "pick up paint", completion_status: true, task_id: f_task1.id)
f_subtask4c = Subtask.create(title: "tape the trim", completion_status: false, task_id: f_task1.id)