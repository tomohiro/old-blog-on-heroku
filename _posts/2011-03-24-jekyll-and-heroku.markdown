---
layout: post
title: Install Jekyll & Deploy to Heroku
---

{{ page.title }}
--------------------------------------------------------------------------------

### Install Jekyll

    $ gem install jekyll

### Setup

    $ mkdir myblog
    $ cd myblog
    $ touch index.html
    $ mkdir _site
    $ mkdir _layouts
    $ mkdir _posts
    $ mkdir images
    $ mkdir css


### Install Rack-Jekyll

    $ gem install rack-jekyll
    $ vi config.ru

    require 'rubygems'
    run Rack::Jekyll.new

    $ echo 'rack-jekyll' > .gems

A basic Rack-Jekyll site usually looks something like this:

    $ tree
    .
    |-- .gems
    |-- _config.yml
    |-- _layouts
    |   |-- default.html
    |   `-- post.html
    |-- _posts
    |   |-- 2011-03-24-my-first-post.markdown
    |   `-- 2011-03-25-my-second-post.markdown
    |-- _site
    |-- config.ru
    `-- index.html

### Running Jekyll

    $ jekyll --server --auto

Browse to http://localhost:4000


### Deply to Heroku

    $ heroku create myblog
    $ git add . 
    $ git commit -a -m 'my blog first commit.'
    $ git push heroku master

Browse to http://myblog.heroku.com

Congratulations!


### Reference:

- [Home - GitHub](https://github.com/mojombo/jekyll/wiki "Home - GitHub")
- [Install - GitHub](https://github.com/mojombo/jekyll/wiki/Install "Install - GitHub")
- [Usage - GitHub](https://github.com/mojombo/jekyll/wiki/Usage "Usage - GitHub")
