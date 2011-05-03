---
layout: post
title: Snow Leopard で Node.js と express を動かす
categories: [JavaScript, Node.js]
---

Node.js で Web アプリ作ってみようかと思い立ったので，下記の環境を用意する．

- Node.js
- npm - パッケージマネージャ
- express - Web アプリケーションフレームワーク

### Node.js のインストール

brew を使って入れる．

{% highlight bash %}
$ brew install node
==> Downloading http://nodejs.org/dist/node-v0.4.7.tar.gz
######################################################################## 100.0%
==> ./configure --prefix=/usr/local/Cellar/node/0.4.7
==> make install
==> Caveats
Please add /usr/local/lib/node to your NODE_PATH environment variable to have node libraries picked up.
==> Summary
/usr/local/Cellar/node/0.4.7: 72 files, 7.5M, built in 6.2 minutes
{% endhighlight %}

node のパスを環境変数に指定する．

{% highlight bash %}
$ vi .zshrc
export NODE_PATH=/usr/local/lib/node
{% endhighlight %}


### npm のインストール

`brew install npm` とすると，別のコマンドを叩くように指示されるので，その通りに実行する．

{% highlight bash %}
$ brew install npm
Error: No available formula for npm
npm can be installed thusly by following the instructions at
  http://npmjs.org/

  To do it in one line, use this command:
    curl http://npmjs.org/install.sh | sh
{% endhighlight %}

{% highlight bash %}
$ curl http://npmjs.org/install.sh | sh
{% endhighlight %}


### express のインストール

{% highlight bash %}
$ npm install express
{% endhighlight %}


### プロジェクトを作る

express コマンドでプロジェクトを自動生成することができる．

{% highlight bash %}
$ express mynodeapp
   create : mynodeapp
   create : mynodeapp/app.js
   create : mynodeapp/public/stylesheets
   create : mynodeapp/public/stylesheets/style.css
   create : mynodeapp/public/javascripts
   create : mynodeapp/logs
   create : mynodeapp/pids
   create : mynodeapp/public/images
   create : mynodeapp/views
   create : mynodeapp/views/layout.jade
   create : mynodeapp/views/index.jade
   create : mynodeapp/test
   create : mynodeapp/test/app.test.js
   - make sure you have installed jade: $ npm install jade
{% endhighlight %}

{% highlight bash %}
$ npm install jade
{% endhighlight %}


### 起動してみる

{% highlight bash %}
$ cd /mynodeapp
$ node app.js
Express server listening on port 3000
{% endhighlight %}

[![express - Tomohiro, TAIRA, on Flickr](http://farm6.static.flickr.com/5108/5670130178_30d9c518fb.jpg)](http://www.flickr.com/photos/tomohiro/5670130178/)


### References:

- [node.js](http://nodejs.org/)
- [npm - Node Package Manager](http://npmjs.org/)
- [Express - node web framework](http://expressjs.com/guide.html#migration-guide)
