---
layout: post
title: Install Jekyll & Deploy to Heroku
categories: [Ruby, Jekyll]
---

### Install Jekyll

{% highlight bash %}
$ gem install jekyll
{% endhighlight %}

### Setup

{% highlight bash %}
$ mkdir myblog
$ cd myblog
$ touch index.html
$ mkdir _site _layouts _posts
$ mkdir css
{% endhighlight %}


### Install Rack-Jekyll

{% highlight bash %}
$ gem install rack-jekyll
$ vi config.ru
{% endhighlight %}

{% highlight ruby %}
# config.ru
require 'rubygems'
run Rack::Jekyll.new
{% endhighlight %}

{% highlight bash %}
$ echo 'rack-jekyll' > .gems
{% endhighlight %}

A basic Rack-Jekyll site usually looks something like this:

{% highlight bash %}
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
{% endhighlight %}

### Running Jekyll

{% highlight bash %}
$ jekyll --server --auto
{% endhighlight %}

Browse to http://localhost:4000


### Deply to Heroku

{% highlight bash %}
$ jekyll --server --auto
$ heroku create myblog
$ git add . 
$ git commit -a -m 'my blog first commit.'
$ git push heroku master
{% endhighlight %}

Browse to http://myblog.heroku.com

Congratulations!


### Reference

- [Home - GitHub](https://github.com/mojombo/jekyll/wiki "Home - GitHub")
- [Install - GitHub](https://github.com/mojombo/jekyll/wiki/Install "Install - GitHub")
- [Usage - GitHub](https://github.com/mojombo/jekyll/wiki/Usage "Usage - GitHub")
