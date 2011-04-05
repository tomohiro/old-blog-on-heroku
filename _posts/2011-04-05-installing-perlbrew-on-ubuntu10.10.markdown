---
layout: post
title: Ubuntu 10.10 に Perlbrew をインストールする
categories: [Perl, Ubuntu]
---


### Perlbrew のインストール

公式の手順通りに進めても良いが，その手順ではデフォルトで `$HOME/perl5` に Perlbrew がインストールされてしまう．

個人的には `$HOME` 直下に見えるディレクトリが増えるのは嬉しくない．

そこで，他の LL の仮想環境と同じように `$HOME/.perlbrew/perl5` をインストール先にするため環境変数 `PERLBREW_ROOT` を設定することにしている．

{% highlight bash %}
$ cd /tmp
$ curl -LO http://xrl.us/perlbrew
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 26914  100 26914    0     0   9671      0  0:00:02  0:00:02 --:--:-- 53084
$ chmod +x perlbrew

$ export PERLBREW_ROOT=$HOME/.perlbrew/perl5

$ ./perlbrew install
The perlbrew is installed as:

    ~/.perlbrew/perl5/bin/perlbrew

You may trash the downloaded /tmp/perlbrew from now on.

Next, if this is the first time you install perlbrew, run:

    ~/.perlbrew/perl5/bin/perlbrew init

And follow the instruction on screen.
{% endhighlight %}


### 初期化

{% highlight bash %}
$ rm -f perlbrew
$ cd ~/.perlbrew/perl5/bin/
$ ./perlbrew init
Perlbrew environment initiated, required directories are created under

    ~/.perlbrew/perl5

Well-done! Congratulations! Please add the following line to the end
of your ~/.bashrc

    source ~/.perlbrew/perl5/etc/bashrc

After that, exit this shell, start a new one, and install some fresh
perls:

    perlbrew install perl-5.12.1
    perlbrew install perl-5.10.1

For further instructions, simply run:

    perlbrew

The default help messages will popup and tell you what to do!

Enjoy perlbrew at $HOME!!
{% endhighlight %}


### シェルの側で Perlbrew を有効にする

{% highlight bash %}
$ vi ~/.zshrc

##### for Perl `perlbrew` #####
if [[ -s $HOME/.perlbrew/perl5/etc/bashrc ]]; then
    source $HOME/.perlbrew/perl5/etc/bashrc
fi

$ source ~/.zshrc
$ which perlbrew
/home/tomohiro/.perlbrew/perl5/bin/perlbrew
{% endhighlight %}


##### Perl を設定する

Perlbrew でインストール済みの Perl を設定する．

{% highlight bash %}
$ perlbrew switch /usr/bin/perl
{% endhighlight %}

別のバージョンをインストールする場合は下記のようにする．

{% highlight bash %}
$ perlbrew install perl-5.12.2
$ perlbrew switch perl-5.12.2
{% endhighlight %}


### References:

- [App::perlbrew - search.cpan.org](http://search.cpan.org/dist/App-perlbrew/lib/App/perlbrew.pm)
- [モダンな Perl の開発環境の構築方法 - TokuLog 改メ tokuhirom’s blog](http://d.hatena.ne.jp/tokuhirom/20100716/perlenv)
