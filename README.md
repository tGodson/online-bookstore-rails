# Online Bookstore Rails

A RESTFUL API built with Ruby on Rails.
In this project, I built a fullstack application where users can access books they love, add a book to favorite, and add notes to favorite books. 
The project serves as my final capstone project at Microverse. The repo for the client app can be accessed [here](https://github.com/tGodson/online-bookstore-react)

## Live Link
[API Home](https://online-bookstore-rails.herokuapp.com/)
[ Client App](https://online-bookstore-react.herokuapp.com)

## Built With

- Ruby v2.7.2
- Ruby on Rails v6.0.3.2
- RSpec-Rails for testing


## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

Ruby: 2.6.5
Rails: 6.0.3.2
Postgres: >=9.5
sqlite3

### Setup

~~~bash
$ git clone https://github.com/tGodson/online-bookstore-rails.git
$ cd online-bookstore-rails
~~~

Install gems with:

```
bundle install
```

Setup database with:

> make sure you have postgress sql installed and running on your system

```
   rails db:create
   rails db:migrate
   rails db:seed
```

### Usage

Start server with:

```
    rails s
```

Open `http://localhost:3000/` in your browser.

### Deploy to a live server

Deploying to a live server like Heroku is easy, make sure you have the necessary credentials setup on your local machine

```bash
heroku create
heroku rename app-new-name
git push heroku $BRANCH_NAME:master 
```
if you are already in master branch no need to add $BRANCH_NAME, just use `git push heroku master`

```bash
heroku run rails db:migrate
heroku run rails db:seed
heroku open
```

Enjoy your newly deployed rails API


### Run tests

```
    rpsec 
```

# Authors

👤 **Tendongze Godson**

- Email: [Email](tendongzegodson@gmail.com)
- Github: [tGodson](https://github.com/tGodson)
- Twitter: [@tendongze95](https://twitter.com/tendongze95)
- Linkedin: [tendongzegodson](https://www.linkedin.com/in/tendongzegodson)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page]().

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgement
[Microverse Inc](https://www.microverse.org/)

