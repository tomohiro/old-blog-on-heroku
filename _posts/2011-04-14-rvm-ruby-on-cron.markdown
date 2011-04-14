---
layout: post
title: RVM でインストールした Ruby を cron で使う
categories: [Ruby]
---

ユーザ環境で動く cron で RVM が管理している Ruby を動かす時のテクニック．

まずこういうテクニックを見つけたので，やってみた．

{% highlight sh %}
* * * * * bash -c '. ~/.rvm/scripts/rvm && command'
{% endhighlight %}

これでも問題なく動が，記述量が多いので，crontab 設定の可読性が落ちるという難点があった．

そこで環境変数の PATH に RVM の bin を追加したところ，いい感じになった．

仮に RVM がインストールされない環境でこの cron 設定を動かしてもシステムの Ruby 処理系が走るだけになる．

{% highlight sh %}
PATH=/home/tomohiro/.rvm/bin:/usr/bin:/bin
* * * * * ruby command
{% endhighlight %}

特定の Ruby 処理系を指定することはできないが，必要であれば環境変数に追加して対応すれば良い．


### References:

- [RVM: Ruby Version Manager - RVM Ruby Version Manager - Documentation](https://rvm.beginrescueend.com/)
