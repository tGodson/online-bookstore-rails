# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'rest-client'
require 'json'

firstBatch = RestClient.get 'https://www.googleapis.com/books/v1/users/102281797701392507828/bookshelves/2/volumes?maxResults=40'
secondBatch = RestClient.get 'https://www.googleapis.com/books/v1/users/102281797701392507828/bookshelves/3/volumes?maxResults=40'

firstJSON = JSON.parse(firstBatch)
secondJSON = JSON.parse(secondBatch)

firstArray = firstJSON["items"]
secondArray = secondJSON["items"]

firstArray.each do |book|
    Book.create(title: book["volumeInfo"]["title"],
    subtitle: book["volumeInfo"]["subtitle"],
    authors: book["volumeInfo"]["authors"].join(", "),
    description: book["volumeInfo"]["description"],
    img: book["volumeInfo"]["imageLinks"]["thumbnail"])
end

secondArray.each do |book|
    Book.create(title: book["volumeInfo"]["title"],
    subtitle: book["volumeInfo"]["subtitle"],
    authors: book["volumeInfo"]["authors"].join(", "),
    description: book["volumeInfo"]["description"],
    img: book["volumeInfo"]["imageLinks"]["thumbnail"])
end


