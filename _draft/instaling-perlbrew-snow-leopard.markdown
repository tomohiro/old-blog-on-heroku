---
layout: post
title: Snow Leopard に perlbrew をインストールする
categories: [Perl, Mac]
---


### perlbrew のインストール

Ubuntu 10.10 に perlbrew をインストールすると同様の手順でインストールが可能だった．

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
perlbrew environment initiated, required directories are created under

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


### シェルの側で perlbrew を有効にする

{% highlight bash %}
$ vi ~/.zshrc

##### for Perl `perlbrew` #####
if [[ -s $HOME/.perlbrew/perl5/etc/bashrc ]]; then
    source $HOME/.perlbrew/perl5/etc/bashrc
fi

$ source ~/.zshrc
$ which perlbrew
/Users/Tomohiro/.perlbrew/perl5/bin/perlbrew
{% endhighlight %}


##### Perl を設定する

Mirror を設定する．

{% highlight bash %}
$ perlbrew mirror
Fetching mirror list
[  1] Africa, South Africa, Cape Town (mirror.ac.za)
[  2] Africa, South Africa, Cape Town (wa.co.za)
[  3] Africa, South Africa, Gauteng, Johannesburg (is.co.za)
[  4] Africa, South Africa, Western Cape, Parow (saix.net)
[  5] Asia, Bangladesh, Dhaka (bd-servers.net)
[  6] Asia, China, Beijing (sohu.com)
[  7] Asia, China, Fujian, Xiamen (xmu.edu.cn)
[  8] Asia, China, Hangzhou (rs.163.com)
[  9] Asia, China, Hong Kong (communilink.net)
[ 10] Asia, China, Liaoning (wenzk.com)
[ 11] Asia, China, Qingdao (mirror.osqdu.org)
[ 12] Asia, Hong Kong, Hong Kong (geoexpat.com)
[ 13] Asia, Hong Kong, Shatin, Hong Kong (cuhk.edu.hk)
[ 14] Asia, India, Maharashtra, Mumbai (indialinks.com)
[ 15] Asia, Indonesia, Bandung (itb.ac.id)
[ 16] Asia, Indonesia, Depok (kambing.ui.ac.id)
[ 17] Asia, Indonesia, Jakarta (biz.net.id)
[ 18] Asia, Indonesia, Jakarta Selatan, Kuningan Barat (cpan.cermin.lipi.go.id)
[ 19] Asia, Israel, Rehovot (biocourse.weizmann.ac.il)
[ 20] Asia, Japan, Fukushima, Aizu-Wakamatsu (u-aizu.ac.jp)
Select a mirror by number or press enter to see the rest (234 more) [q to quit, m for manual entry]  20
Selected Asia, Japan, Fukushima, Aizu-Wakamatsu (u-aizu.ac.jp) (&#102;&#116;&#112;://&#102;&#116;&#112;.&#117;-&#97;&#105;&#122;&#117;.&#97;&#99;.&#106;&#112;/&#112;&#117;&#98;/&#67;&#80;&#65;&#78;/) as the mirror
Attempting to load conf from /Users/Tomohiro/.perlbrew/perl5/Conf.pm
{% endhighlight %}


Perl 5.13.3 をインストールする．

{% highlight bash %}
$ perlbrew install perl-5.13.6

// snip

Installed perl-5.13.6 as perl-5.13.6 successfully. Run the following command to switch to it.

  perlbrew switch perl-5.13.6

$ perlbrew switch perl-5.13.6
Switched to perl-5.13.6

$ perlbrew list
* perl-5.13.6
* /opt/local/bin/perl (5.8.9)
  /usr/bin/perl (5.10.0)
{% endhighlight %}


### References:

- [App::perlbrew - search.cpan.org](http://search.cpan.org/dist/App-perlbrew/lib/App/perlbrew.pm)
- [モダンな Perl の開発環境の構築方法 - TokuLog 改メ tokuhirom’s blog](http://d.hatena.ne.jp/tokuhirom/20100716/perlenv)
