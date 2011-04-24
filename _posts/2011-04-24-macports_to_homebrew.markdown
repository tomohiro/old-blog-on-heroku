---
layout: post
title: MacPorts から Homebrew へ移行
categories: [Mac, Homebrew]
---

Mac 上で Unix ツールを管理するマネージャを MacPorts から Homebrew へ移行した．

少ししか触っていないが，下記の点が非常に魅力的だと感じた．

- MacPorts に比べて動作が軽快
- レシピの自作が簡単 (Fomula という名前の Ruby スクリプト)


### MacPorts のアンインストール

#### 1. アンインストール

{% highlight bash %}
$ sudo port -f uninstall installed
$ sudo rm -rf \
    /opt/local \
    /Applications/DarwinPorts \
    /Applications/MacPorts \
    /Library/LaunchDaemons/org.macports.* \
    /Library/Receipts/DarwinPorts*.pkg \
    /Library/Receipts/MacPorts*.pkg \
    /Library/StartupItems/DarwinPortsStartup \
    /Library/Tcl/darwinports1.0 \
    /Library/Tcl/macports1.0 \
    ~/.macports
{% endhighlight %}

#### 2. /opt/local/ へのパスを削除

環境変数 `$PATH` に MacPorts のディレクトリを指定する設定があるので削除する

{% highlight bash %}
$ vi ~/.profile
{% endhighlight %}


### Homebrew をインストール

#### 1. Homebrew のインストール手順の指示に従い，下記のディレクトリを削除

> We recommend you delete `/usr/local/include` and `/usr/local/lib`

{% highlight bash %}
$ sudo rm -rf /usr/local/lib
{% endhighlight %}

#### 2. インストールする

{% highlight bash %}
$ ruby -e "$(curl -fsSLk https://gist.github.com/raw/323731/install_homebrew.rb)"
==> This script will install:
/usr/local/bin/brew
/usr/local/Library/Formula/...
/usr/local/Library/Homebrew/...
==> The following directories will be made group writable:
/usr/local/.
/usr/local/bin
==> The following directories will have their group set to staff:
/usr/local/.
/usr/local/bin

Press enter to continue
==> /usr/bin/sudo /bin/chmod g+w /usr/local/. /usr/local/bin
==> /usr/bin/sudo /usr/bin/chgrp staff /usr/local/. /usr/local/bin
==> Downloading and Installing Homebrew...
==> Installation successful!
{% endhighlight %}


#### 3. バージョンを確認

{% highlight bash %}
$ rehash
$ brew --version
0.8
{% endhighlight %}


#### 4. Zsh で brew コマンドの補完をできるようにする

{% highlight bash %}
$ vi .zshrc
fpath=($HOME/.zsh/functions $fpath)
{% endhighlight %}

{% highlight bash %}
$ sudo cp /usr/local/Library/Contributions/brew_zsh_completion.zsh /usr/local/share/zsh/functions/_brew
{% endhighlight %}


### References:

- [2.5. Uninstall](http://guide.macports.org/chunked/installing.macports.uninstalling.html)
- [Homebrew — MacPorts driving you to drink? Try Homebrew!](http://mxcl.github.com/homebrew/)
- [Installation - GitHub](https://github.com/mxcl/homebrew/wiki/installation)
- [The brew command - GitHub](https://github.com/mxcl/homebrew/wiki/the-brew-command)
