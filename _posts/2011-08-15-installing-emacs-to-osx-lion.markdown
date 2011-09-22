---
layout: post
title: OSX Lion に Emacs をインストール
category: Emacs
---


OSX Lion に Emacs をインストールした時のメモ

Homebrew を使ってインストールするがデフォルトのレシピだとこけるので，野良レシピを使う必要がある．

`--lion` オプションをつけると Lion のフルスクリーン機能が使えるようになる．

{% highlight sh %}
$ brew install https://raw.github.com/gist/1124161/6a265cd3b6b35b9dd550d26896063c3dfba6f4fa/emacs.rb --cocoa --lion
{% endhighlight %}


### Reference

- [Homebrew Emacs 23.3a for OSX Lion with native full-screen, inline patch — Gist](https://gist.github.com/1124161)
