# Social Media App with Ruby on Rails

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]

> On this milestone, we achieved the creation of a 2 record per relationship architecture for the database based on [the article by Quassnoi](https://explainextended.com/2009/03/07/selecting-friends/) where he explains and shows why this model is better than a cross-checking architecture to eliminate the possibility of multiple friend requests with the same 2 users. We polished the front-end to give users all the features expected in a social network; like send friend requests, accept/deny requests, see posts in chronological order, create posts, add comments to posts, etc.

![screenshot1](images/screenshot02.png)

![screenshot1](images/screenshot01.png)

![screenshot1](images/screenshot03.png)

![screenshot1](images/screenshot04.png)

## Live Linke

[Livelink] https://murmuring-thicket-07012.herokuapp.com/users/sign_in

## Built With

- Ruby v2.6.5
- Ruby on Rails v5.2.4

## Getting Started

To get started with the app, cd to the directory where you would like the repo to live by typing on your terminal:

```
$ cd <directory>
```

Clone the repo typing:

```
$ git clone git@github.com:shubham14p3/ror-social-scaffold.git
```

Install the needed gems:

```
$ bundle install
```

Next, initialize the pre-build database with seeds :

```
$ rake db:seed
```

and then

```
$ rake db:setup

```


Next, migrate the database:

```
$ rails db:migrate
```

Finally, start server:

```
$ rails server
```

Open `http://localhost:3000/` in your browser.

### Prerequisites

Ruby: 2.6.3
Rails: 5.2.3
Postgres: >=9.5

### Run tests

```
  rpsec spec/features/users/users_spec.rb

  psec spec/features/users/friends_spec.rb

  rpsec spec/features/users/login_spec.rb
```

## Authors

👤 **Luis Angel Maldonado**

- Github: [@lmaldonadoch](https://github.com/lmaldonadoch)
- Twitter: [@LuisAngelMCh](https://twitter.com/LuisAngelMCh)
- Linkedin: [linkedin](https://www.linkedin.com/in/lmaldonadoch)

👤 **Shubham Raj**

- Github: [@ShubhamRaj](https://github.com/shubham14p3)
- Linkedin: [Shubham14p3](https://www.linkedin.com/in/shubham14p3/)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https://github.com/shubham14p3//ror-social-scaffold/issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Project requested by [Microverse Program](https://www.microverse.org/).



<!-- MARKDOWN LINKS & IMAGES -->

[contributors-shield]: https://img.shields.io/github/contributors/shubham14p3/members-only.svg?style=flat-square
[contributors-url]: https://github.com/shubham14p3/ror-social-scaffold/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/shubham14p3/members-only.svg?style=flat-square
[forks-url]: https://github.com/shubham14p3/ror-social-scaffold/network/members
[stars-shield]: https://img.shields.io/github/stars/shubham14p3/members-only.svg?style=flat-square
[stars-url]: https://github.com/shubham14p3/ror-social-scaffold/stargazers
[issues-shield]: https://img.shields.io/github/issues/shubham14p3/members-only.svg?style=flat-square
[issues-url]: https://github.com/shubham14p3/ror-social-scaffold/issues
