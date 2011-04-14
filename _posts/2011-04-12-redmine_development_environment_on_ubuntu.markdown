---
layout: post
title: Ubuntu 10.10 で開発版 Redmine のプラグイン開発環境を作成する
categories: [Ruby, Redmine]
---

Redmine の開発環境を簡単に作るというのを目指すと下記のような手順になった．


### 使用ライブラリとバージョン

名前     | バージョン
-------- | ----------
RVM      | 1.6.1 
Ruby     | 1.8.7
Rails    | 2.3.11 
SQLite3  | 3.7.2
RubyGems | 1.6.2


### SQLite3 のインストール

{% highlight bash %}
$ apt-get install sqlite3 libsqlite3-dev libsqlite-0
{% endhighlight %}


### Ruby のインストール

RVM を使ってインストールする

{% highlight bash %}
$ rvm install 1.8.7
$ rvm use 1.8.7
{% endhighlight %}


### Rails のインストール

{% highlight bash %}
$ gem install -v=0.4.2 i18n
$ gem install -v=2.3.11 rails
$ gem install sqlite3
$ gem install ruby-debug
$ gem install thin
{% endhighlight %}

{% highlight bash %}
$ gem list

*** LOCAL GEMS ***

actionmailer (2.3.11)
actionpack (2.3.11)
activerecord (2.3.11)
activeresource (2.3.11)
activesupport (2.3.11)
columnize (0.3.2)
daemons (1.1.2)
eventmachine (0.12.10)
i18n (0.4.2)
linecache (0.43)
rack (1.1.2)
rails (2.3.11)
rake (0.8.7)
ruby-debug (0.10.4)
ruby-debug-base (0.10.4)
sqlite3 (1.3.3)
thin (1.2.11)
{% endhighlight %}


### Redmine リポジトリを用意する

#### Git clone

{% highlight bash %}
$ git clone git://github.com/edavis10/redmine.git redmine@edavis
{% endhighlight %}


#### 初期設定

{% highlight bash %}
$ cd redmine@edavis
$ vi config/database.yml
{% endhighlight %}

{% highlight yaml %}
development:
  adapter: sqlite3
  database: db/development.sqlite3
{% endhighlight %}

{% highlight bash %}
$ RAILS_ENV=development rake config/initializers/session_store.rb
$ RAILS_ENV=development rake db:migrate
$ RAILS_ENV=development rake redmine:load_default_data
(in /home/tomohiro/Dropbox/Development/forks/redmine@edavis)

Select language: bg, bs, ca, cs, da, de, el, en, en-GB, es, eu, fa, fi, fr, gl, he, hr, hu, id, 
it, ja, ko, lt, lv, mk, mn, nl, no, pl, pt, pt-BR, ro, ru, sk, sl, sr, sr-YU, sv, th, tr, uk, 
vi, zh, zh-TW [en] ja
====================================
Default configuration data loaded.
{% endhighlight %}


#### サーバを起動する

デフォルトの WEBrick の場合

{% highlight bash %}
$ ./script/server -u
=> Booting WEBrick
=> Rails 2.3.11 application starting on http://0.0.0.0:3000
=> Debugger enabled
=> Call with -d to detach
=> Ctrl-C to shutdown server
[2011-04-12 18:08:29] INFO  WEBrick 1.3.1
[2011-04-12 18:08:29] INFO  ruby 1.8.7 (2011-02-18) [i686-linux]
[2011-04-12 18:08:34] INFO  WEBrick::HTTPServer#start: pid=18697 port=3000
{% endhighlight %}

Thin の場合

{% highlight bash %}
$ ./script/server thin -u
=> Booting Thin
=> Rails 2.3.11 application starting on http://0.0.0.0:3000
=> Debugger enabled
=> Call with -d to detach
=> Ctrl-C to shutdown server
>> Thin web server (v1.2.11 codename Bat-Shit Crazy)
>> Maximum connections set to 1024
>> Listening on 0.0.0.0:3000, CTRL+C to stop
{% endhighlight %}

### ブラウザからアクセス

`http://0.0.0.0:3000` にアクセスして `admin/admin` でログオンを試す


### References:

- [RVM: Ruby Version Manager - RVM Ruby Version Manager - Documentation](https://rvm.beginrescueend.com/)
- [Redmine - Download - Latest source code Development(unstable)](http://www.redmine.org/projects/redmine/wiki/Download#Development-unstable)
