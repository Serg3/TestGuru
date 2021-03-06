# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = Category.create([
  { title: 'front-end' },
  { title: 'back-end' },
  { title: 'full-stack' }
])

users = User.create([
  { first_name: 'John', email: 'john@example.com', password: 'password' },
  { first_name: 'Mike', email: 'mike@example.com', password: 'password' },
  { first_name: 'Jane', email: 'jane@example.com', password: 'password' },
  { first_name: 'Lisa', email: 'lisa@example.com', password: 'password' }
])

admins = Admin.create([
  { first_name: 'Sergey', last_name: 'Kovalyov', email: 'sergey@example.com', password: 'sergey', type: 'Admin' }
])

tests = Test.create([
  { title: 'Ruby', level: 0, category_id: categories.fetch(0).id, author_id: admins.fetch(0).id },
  { title: 'Ruby', level: 1, category_id: categories.fetch(1).id, author_id: admins.fetch(0).id },
  { title: 'Rails', level: 1, category_id: categories.fetch(1).id, author_id: admins.fetch(0).id },
  { title: 'Rails', level: 2, category_id: categories.fetch(2).id, author_id: admins.fetch(0).id },
  { title: 'HTML', level: 0, category_id: categories.fetch(0).id, author_id: admins.fetch(0).id }
])

questions = Question.create([
  { body: "What is 'Ruby'?", test_id: tests.fetch(0).id },
  { body: "What is base class in 'Ruby'?", test_id: tests.fetch(1).id },
  { body: "What is 'Rails'?", test_id: tests.fetch(2).id },
  { body: "What is 'ActiveRecord'?", test_id: tests.fetch(3).id },
  { body: "What is 'HTML'?", test_id: tests.fetch(4).id }
])

answers = Answer.create([
  { body: "'Ruby' is a interpreted language.", correct: true, question_id: questions.fetch(0).id },
  { body: "'Ruby' is a compiled language.", correct: false, question_id: questions.fetch(0).id },
  { body: "'BasicObject'.", correct: true, question_id: questions.fetch(1).id },
  { body: "'Object'.", correct: false, question_id: questions.fetch(1).id },
  { body: "'Rails' is a framework.", correct: true, question_id: questions.fetch(2).id },
  { body: "'Rails' is a cloud servise.", correct: false, question_id: questions.fetch(2).id },
  { body: "'Active Record' is the M in MVC - the model - which is the layer of the system responsible for representing business data and logic.", correct: true, question_id: questions.fetch(3).id },
  { body: "'Active Record' is an architectural pattern found in software that stores in-memory object data in relational databases.", correct: false, question_id: questions.fetch(3).id },
  { body: "'HTML' is the standard markup language for creating web pages and web applications.", correct: true, question_id: questions.fetch(4).id },
  { body: "'HTML' is an object oriented language.", correct: false, question_id: questions.fetch(4).id }
])

# tests = TestPassage.create([
#   { status: 'Complete', user_id: users.fetch(0).id, test_id: tests.fetch(4).id },
#   { status: 'In progress', user_id: users.fetch(0).id, test_id: tests.fetch(0).id },
#   { status: 'Complete', user_id: users.fetch(1).id, test_id: tests.fetch(2).id },
#   { status: 'In progress', user_id: users.fetch(1).id, test_id: tests.fetch(3).id },
#   { status: 'In progress', user_id: users.fetch(2).id, test_id: tests.fetch(0).id },
# ])

badges = Badge.create([
  { title: 'complete successfully back-end test', rule: 'category_complete', parameter: 'back-end' },
  { title: 'complete successfully full-stack test', rule: 'category_complete', parameter: 'full-stack' },
  { title: 'complete successfully for the first try', rule: 'first_try', parameter: '' },
  { title: 'complete successfully the 1-st level test', rule: 'level_complete', parameter: '1' },
  { title: 'complete successfully the 2-nd level test', rule: 'level_complete', parameter: '2' },
])
