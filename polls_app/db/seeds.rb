# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Poll.destroy_all
Question.destroy_all
AnswerChoice.destroy_all
Response.destroy_all

ActiveRecord::Base.transaction do


  user1 = User.create!( username: 'Joe' )
  user2 = User.create!( username: 'Johnny' )

  poll1 = Poll.create!( title:  "PIZZA", author: user1 )
  poll2 = Poll.create!( title:  "Commute", author: user2 )

  question1 = Question.create!( text: "Who wants Pizza?", poll: poll1 )
  question2 = Question.create!( text: "Who takes the bus?", poll: poll2 )

  answer1 = AnswerChoice.create!( answer_text: "Yes!!!", question: question1 )
  answer2 = AnswerChoice.create!( answer_text: "YUCKY!", question: question1 )
  answer3 = AnswerChoice.create!( answer_text: "I do", question: question2 )
  answer4 = AnswerChoice.create!( answer_text: "Not me", question: question2 )

  response1 = Response.create!( answer_choice: answer1, respondent: user1 )
  response2 = Response.create!( answer_choice: answer2, respondent: user2 )
  response3 = Response.create!( answer_choice: answer3, respondent: user1 )
  response4 = Response.create!( answer_choice: answer4, respondent: user2 )

end