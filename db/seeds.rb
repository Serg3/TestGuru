# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create(title: 'beginner')
Category.create(title: 'intermediate')
Category.create(title: 'advanced')

User.create(name: 'John')
User.create(name: 'Mike')
User.create(name: 'Jane')
User.create(name: 'Lisa')

Test.create(title: 'Ruby', category_id: 1, level: 0)
Test.create(title: 'Ruby', category_id: 2, level: 1)
Test.create(title: 'Rails', category_id: 2, level: 1)
Test.create(title: 'Rails', category_id: 3, level: 2)
Test.create(title: 'HTML', category_id: 1, level: 0)

Question.create(body: "What is 'Ruby'?", test_id: 1)
Answer.create(body: "'Ruby' is a interpreted language.", question_id: 1, correct: true)
Answer.create(body: "'Ruby' is a compiled language.", question_id: 1, correct: false)

Question.create(body: "What is base class in 'Ruby'?", test_id: 2)
Answer.create(body: "'BasicObject'.", question_id: 2, correct: true)
Answer.create(body: "'Object'.", question_id: 2, correct: false)

Question.create(body: "What is 'Rails'?", test_id: 3)
Answer.create(body: "'Rails' is a framework.", question_id: 3, correct: true)
Answer.create(body: "'Rails' is a cloud servise.", question_id: 3, correct: false)

Question.create(body: "What is 'ActiveRecord'?", test_id: 4)
Answer.create(body: "'Active Record' is the M in MVC - the model - which is the layer of the system responsible for representing business data and logic.", question_id: 4, correct: true)
Answer.create(body: "'Active Record' is an architectural pattern found in software that stores in-memory object data in relational databases.", question_id: 4, correct: false)

Question.create(body: "What is 'HTML'?", test_id: 5)
Answer.create(body: "'HTML' is the standard markup language for creating web pages and web applications.", question_id: 5, correct: true)
Answer.create(body: "'HTML' is an object oriented language.", question_id: 5, correct: false)
