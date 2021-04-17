require 'rest-client'
require 'json'

firstBatch = RestClient.get 'https://www.googleapis.com/books/v1/users/102281797701392507828/bookshelves/0/volumes?maxResults=40'
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


