---
layout: post
title: perlbrew 環境に cpanminus をインストールする
categories: [Perl]
--- 
[cpanminus](https://github.com/miyagawa/cpanminus/) は Perl の CPAN を簡単に使えるようにするツール．

perlbrew と組み合わせるとローカルユーザ領域に CPAN モジュールをインストールすることも簡単にできる．

perlbrew のインストールは前回の[エントリ](http://log.tomohiro.me/entries/installing-perlbrew-on-ubuntu10.10)の通りである．


### インストール

{% highlight bash %}
$ curl -LO http://xrl.us/cpanm
$ chmod +x cpanm
$ export PERL_CPANM_OPT="--local-lib=$PERLBREW_ROOT"
$ perl ./cpanm App::cpanminus
$ cpanm -V
cpanm -Vcpanm (App::cpanminus) version 1.4004
{% endhighlight %}


### cpanminus のデフォルトオプション環境変数をシェルに設定

perlbrew を `$HOME/.perlbrew/perl5` 以下にインストールしているため，そこに cpanminus のモジュールをインストールするような設定を加える．

{% highlight bash %}
$ vi ~/.zshrc
##### for cpanminus #####
if which cpanm > /dev/null 2>&1 && [ -n $PERLBREW_ROOT ]; then 
    export PERL_CPANM_OPT=--local-lib=$PERLBREW_ROOT
    export PERL5LIB=$PERLBREW_ROOT/lib/perl5:$PERL5LIB
fi

$ source ~/.zshrc
{% endhighlight %}


### cpanminus をアップグレードする

{% highlight bash %}
$ cpanm --self-upgrade
{% endhighlight %}


### References

- [Ubuntu 10.10 に perlbrew をインストールする](http://log.tomohiro.me/entries/installing-perlbrew-on-ubuntu10.10) 
- [miyagawa/cpanminus - GitHub](https://github.com/miyagawa/cpanminus/)
- [モダンな Perl の開発環境の構築方法 - TokuLog 改メ tokuhirom’s blog](http://d.hatena.ne.jp/tokuhirom/20100716/perlenv) 
