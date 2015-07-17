# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin = Admin.create({email: "test@test.com", password: "testtest", password_confirmation: "testtest"})

user = User.create({email: "bob@bob.com", password: "bobpass1", password_confirmation: "bobpass1"})

categories = Category.create([
{name: "Ruby" , description: "Ruby is my first programing language."  },
{name: "JavaScript", description: "As a content developer, I kept running up against Javascript issues. Gaining a better understanding of Javascript and JQuery is definately a part of why I came to Epicodus." },
{name: "Rails", description: "Using Rails I have been able to build sites with CRUD functionality, including this one!" },
{name: "Ember", description: "Ember was my first framework. "}])

projects = Project.create([
{name: "Tic-Tac-Toe", description: "A simple game of Tic-Tac-Toe in Javascript.", link:"https://github.com/drabelpdx/Epi_W7_tictactoe", category_id:2},
{name: "Pisa Pizza", description: "This app allows the user to order pizzas online. The user can order mulitple pizzas with a variety of toppings. The app will display the user's order and a total cost on completion.", link:"https://github.com/drabelpdx/Epi_W7_codereview", category_id:2},
{name: "Find and Replace", description: "This app allows the user to submit a sentence, a word to search for and a replacement word. The app will find all occurances of that word and replace with the given replacement word. Then it will return the new sentence back to the user.", link:"https://github.com/drabelpdx/Epi_W6_codereview", category_id:2},
{name: "Portfolio", description:"This multi-week project you are looking at right now." , link:"https://github.com/drabelpdx/Epi_W13_codereview.git", category_id:3}])

posts = Post.create([
{title: "My first post", body: "So what do yout think so far?"},
{title: "I love Rails", body: "I made this site on Rails."},
{title: "Epicodus is Great!", body: "The let me build some awsome stuff."}])
