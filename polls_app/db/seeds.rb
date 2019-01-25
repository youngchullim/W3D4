# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.transaction{
  User.destroy_all 

  user1 = User.create!({username: 'Elliot'}) 
  user2 = User.create!({username: 'Jesse'}) 
  user3 = User.create!({username: 'Super_Saiyan_Frieza'}) 

  Poll.destroy_all

  poll1 = Poll.create!({title: 'DragonBall Z'}, {author_id: user1.id})
  poll2 = Poll.create!({title: 'App Academey'}, {author_id: user2.id})

  Question.destroy_all

  question1 = Question.create!({text: 'Who is the best Goku?'}, {poll_id: poll1.id})
  question2 = Question.create!({text: 'What is the best DBZ series?'}, {poll_id: poll1.id})

  question3 = Question.create!({text: 'Who is App Accademey?'}, {poll_id: poll2.id})
  question4 = Question.create!({text: 'What do the TA\'s do at their table?'}, {poll_id: poll2.id})


  Answer.destroy_all

  answer1 = Answer.create!({text: 'Goku is the best goku'}, {question_id: question1.id})
  answer2 = Answer.create!({text: 'Vegeta is the best goku'}, {question_id: question1.id})

  answer3 = Answer.create!({text: 'what is dbz?'}, {question_id: question2.id})
  answer4 = Answer.create!({text: 'All of em'}, {question_id: question2.id})

  answer5 = Answer.create!({text: 'LizBot'}, {question_id: question3.id})
  answer6 = Answer.create!({text: 'VannesaBot'}, {question_id: question3.id})

  answer7 = Answer.create!({text: 'Laugh at the students/eat snacks'}, {question_id: question4.id})
  answer8 = Answer.create!({text: 'actually work on something'}, {question_id: question4.id})

  Response.destroy_all

  #this is for the first poll
  response1 = Response.create!({user_id: user3.id}, {answer_id: answer1.id})
  response2 = Response.create!({user_id: user3.id}, {answer_id: answer4.id})
  #this is for second poll
  response3 = Response.create!({user_id: user3.id}, {answer_id: answer5.id})
  response4 = Response.create!({user_id: user3.id}, {answer_id: answer7.id})


}
