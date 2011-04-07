---
layout: post
title: Perl の Micro WAF Dancer を使う
categories: [Perl]
---

[Dancer](http://perldancer.org/) は Ruby の Sinatra ライクな Micro WAF である．


### インストール

{% highlight bash %}
$ cpanm YAML
$ cpanm Dancer
{% endhighlight %}


### アプリケーションディレクトリを作る

{% highlight bash %}
$ dancer -a MyWeb::App
+ MyWeb-App
+ MyWeb-App/bin
+ MyWeb-App/bin/app.pl
+ MyWeb-App/config.yml
+ MyWeb-App/environments
+ MyWeb-App/environments/development.yml
+ MyWeb-App/environments/production.yml
+ MyWeb-App/views
+ MyWeb-App/views/index.tt
+ MyWeb-App/views/layouts
+ MyWeb-App/views/layouts/main.tt
+ MyWeb-App/lib
+ MyWeb-App/lib/MyWeb
+ MyWeb-App/lib/MyWeb/App.pm
+ MyWeb-App/public
+ MyWeb-App/public/css
+ MyWeb-App/public/css/style.css
+ MyWeb-App/public/css/error.css
+ MyWeb-App/public/images
+ MyWeb-App/public/500.html
+ MyWeb-App/public/404.html
+ MyWeb-App/public/dispatch.fcgi
+ MyWeb-App/public/dispatch.cgi
+ MyWeb-App/public/javascripts
+ MyWeb-App/public/javascripts/jquery.js
+ MyWeb-App/Makefile.PL
+ MyWeb-App/t
+ MyWeb-App/t/002_index_route.t
+ MyWeb-App/t/001_base.t
{% endhighlight %}

### References:

- [log.tomohiro.me | Ubuntu 10.10 に Perlbrew をインストールする](http://log.tomohiro.me/entries/installing-perlbrew-on-ubuntu10.10) 
- [PerlDancer - The easiest way to write web applications with Perl](http://perldancer.org/)
