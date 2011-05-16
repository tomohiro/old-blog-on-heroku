---
layout: post
title: Debian の Apache2 でリバースプロキシを設定する
categories: [Debian, Apache]
---

CentOS 5.6 をネットワークインストールしようとしたところ，Debian のインストーラと違って，プロキシ超えが出来ないことがわかった．

ローカルネットワークから見えるところにリバースプロキシを設定して，そこと通信するようにすれば良いらしい．

今回は Debian Squeeze の Apache2 を利用した．


### リバースプロキシの設定

#### モジュールを有効にする

{% highlight bash %}
# a2enmod proxy
# a2enmod proxy_http
{% endhighlight %}


#### CentOS のミラーサイトを設定

{% highlight bash %}
# vi /etc/apache2/httpd.conf
ProxyPass /Linux/centos http://ftp.riken.jp/Linux/centos
ProxyPassReverse /Linux/centos http://ftp.riken.jp/Linux/centos

ProxyRemote * http://proxy.example.com:8080
{% endhighlight %}


#### Apache を起動

{% highlight bash %}
# /etc/init.d/apache2 start
{% endhighlight %}


### CentOS セットアップ時の設定

以下，英語版でインストールしてる状況での説明．

ネットワークインストールを設定すると，`HTTP Setup` という画面が出てくるので，下記のように入力して `OK` すれば，インストールが続けられる．


項目名           | 入力内容
---------------- | -------------------------
Web Site name    | reverse-proxy.example.com
CentOS directory | Linux/centos/5.6/os/i386


### References:

- [CentOS 5.5 x86-64 をネットワークインストール: Akito's IT技術 メモ](http://akitosblog.seesaa.net/article/159752158.html)
- [Apache/リバースプロキシを作る（Debian Etch編） - 俺の基地](http://yakinikunotare.boo.jp/orebase/index.php?Apache%2F%A5%EA%A5%D0%A1%BC%A5%B9%A5%D7%A5%ED%A5%AD%A5%B7%A4%F2%BA%EE%A4%EB%A1%CADebian%20Etch%CA%D4%A1%CB)
