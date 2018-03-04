# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = Category.create([
  { title: 'beginner' },
  { title: 'intermediate' },
  { title: 'advanced' }
])

users = User.create([
  { name: 'John' },
  { name: 'Mike' },
  { name: 'Jane' },
  { name: 'Lisa' }
])

tests = Test.create([
  { title: 'Ruby', level: 0, category_id: categories[0].id },
  { title: 'Ruby', level: 1, category_id: categories[1].id },
  { title: 'Rails', level: 1, category_id: categories[1].id },
  { title: 'Rails', level: 2, category_id: categories[2].id },
  { title: 'HTML', level: 0, category_id: categories[0].id }
])

questions = Question.create([
  { body: "What is 'Ruby'?", test_id: tests[0].id },
  { body: "What is base class in 'Ruby'?", test_id: tests[1].id },
  { body: "What is 'Rails'?", test_id: tests[2].id },
  { body: "What is 'ActiveRecord'?", test_id: tests[3].id },
  { body: "What is 'HTML'?", test_id: tests[4].id }
])

answers = Answer.create([
  { body: "'Ruby' is a interpreted language.", correct: true, question_id: questions[0].id },
  { body: "'Ruby' is a compiled language.", correct: false, question_id: questions[0].id },
  { body: "'BasicObject'.", correct: true, question_id: questions[1].id },
  { body: "'Object'.", correct: false, question_id: questions[1].id },
  { body: "'Rails' is a framework.", correct: true, question_id: questions[2].id },
  { body: "'Rails' is a cloud servise.", correct: false, question_id: questions[2].id },
  { body: "'Active Record' is the M in MVC - the model - which is the layer of the system responsible for representing business data and logic.", correct: true, question_id: questions[3].id },
  { body: "'Active Record' is an architectural pattern found in software that stores in-memory object data in relational databases.", correct: false, question_id: questions[3].id },
  { body: "'HTML' is the standard markup language for creating web pages and web applications.", correct: true, question_id: questions[4].id },
  { body: "'HTML' is an object oriented language.", correct: false, question_id: questions[4].id }
])

tests = PassedTest.create([
  { status: 'Complete', user_id: users[0].id, test_id: tests[4].id },
  { status: 'In progress', user_id: users[0].id, test_id: tests[0].id },
  { status: 'Complete', user_id: users[1].id, test_id: tests[2].id },
  { status: 'In progress', user_id: users[1].id, test_id: tests[3].id },
  { status: 'In progress', user_id: users[2].id, test_id: tests[0].id },
])
