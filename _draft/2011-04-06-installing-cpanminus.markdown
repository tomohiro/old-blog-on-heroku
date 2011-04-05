---
layout: post
title: Perlbrew 環境に cpanminus をインストールする
categories: [Perl]
---

[cpanminus](https://github.com/miyagawa/cpanminus/) は Perl の CPAN を簡単に使えるようにするツール．

Perlbrew と組み合わせるとローカルユーザ領域に CPAN モジュールをインストールすることが可能になる．

Perlbrew のインストールは前回の [エントリ](http://log.tomohiro.me/entries/installing-perlbrew-on-ubuntu10.10) の通りである．


### インストール

{% highlight sh %}
$ curl -LO http://xrl.us/cpanm
$ chmod +x cpanm
$ export PERL_CPANM_OPT="--local-lib=$PERLBREW_ROOT"
$ perl ./cpanm App::cpanminus
$ cpanm -V
cpanm -Vcpanm (App::cpanminus) version 1.4004
{% endhighlight %}


### cpanminus のデフォルトオプション環境変数をシェルに設定

{% highlight zsh %}
$ vi .zshrc
##### for cpanminus #####
if which perlbrew >/dev/null 2>&1 ; then
    export PERL_CPANM_OPT=--local-lib=$PERLBREW_ROOT
fi

$ source .zshrc
{% endhighlight %}


### cpanminus をアップグレードする

{% highlight zsh %}
$ cpanm --self-upgrade
{% endhighlight %}


### References:

- [log.tomohiro.me | Ubuntu 10.10 に Perlbrew をインストールする](http://log.tomohiro.me/entries/installing-perlbrew-on-ubuntu10.10) 
- [miyagawa/cpanminus - GitHub](https://github.com/miyagawa/cpanminus/)
- [モダンな Perl の開発環境の構築方法 - TokuLog 改メ tokuhirom’s blog](http://d.hatena.ne.jp/tokuhirom/20100716/perlenv) 
