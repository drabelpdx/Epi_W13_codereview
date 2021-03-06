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
{name: "Ruby on Rails" , description: "Ruby is my first programing language. Using Rails I have been able to build sites with CRUD functionality, including this one!" },
{name: "JavaScript", description: "As a content developer, I kept running up against JavaScript issues. Gaining a better understanding of JavaScript and JQuery is definitely a part of why I came to Epicodus." },
{name: "Ember", description: "Ember was my first framework. "}])

projects = Project.create([
{name: "My Record Crate", description:"This is a rails app that uses the API from Discogs to display artists and album information.", link:"https://github.com/drabelpdx/MyRecordCrate.git", url: "https://agile-retreat-9554.herokuapp.com", image: "http://www.abelpdx.com/images/recordcrate.png", category_id:1 },
{name: "Portfolio", description:"This project you are looking at right now. It provides several work samples with links to the github code and live sites where possible.", link:"https://github.com/drabelpdx/Epi_W13_codereview.git", url: "", image: "http://www.abelpdx.com/images/portfolio.png", category_id:1 },
{name: "Pisa Pizza", description: "This app allows the user to order pizzas online. The user can order mulitple pizzas with a variety of toppings. The app will display the user's order and a total cost on completion.", link:"https://github.com/drabelpdx/Epi_W7_codereview", url: "http://www.abelpdx.com/pizza.html", image: "http://www.abelpdx.com/images/pizza.png", category_id:2},
{name: "Star-Trek-Toe", description: "A simple game of Tic-Tac-Toe in JavaScript.", link:"https://github.com/drabelpdx/Epi_W7_tictactoe", url: "http://www.abelpdx.com/tictactoe.html", image: "http://www.abelpdx.com/images/StarTrekToe.png", category_id:2},
{name: "Find and Replace", description: "This app allows the user to submit a sentence, a word to search for and a replacement word. The app will find all occurances of that word and replace with the given replacement word. Then it will return the new sentence back to the user.", link:"https://github.com/drabelpdx/Epi_W6_codereview", url: "http://www.abelpdx.com/findreplace.html", image: "http://www.abelpdx.com/images/FindReplace.png", category_id:2},
{name: "Ember101", description: "This is a build of the Ember101 excercise by Adolfo Builes and deployed to Heroku.", link:"https://github.com/drabelpdx/Epi_W15_Ember101", url: "https://secret-escarpment-1137.herokuapp.com", image: "http://www.abelpdx.com/images/ember101.png", category_id:3}])


posts = Post.create([
{title: "My first post", body: "So what do you think so far?"},
{title: "I love Rails", body: "I made this site on Rails."},
{title: "Epicodus is Great!", body: "They let me build some awesome stuff."}])
