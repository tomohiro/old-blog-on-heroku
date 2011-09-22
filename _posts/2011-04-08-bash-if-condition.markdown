---
layout: post
title: Bash の if で AND 条件や OR 条件を使用する
categories: [Bash]
---

### 複数コマンドの組み合わせ

例. Zsh がインストールされていて，環境変数 $ZSH_SPECIAL_VAR が存在する場合

{% highlight bash %}
if which zsh >/dev/null 2>&1 && test -z $ZSH_SPECIAL_VAR; then
    # do something
fi
{% endhighlight %}


### test コマンドを使う場合

例. AND 条件: FILE が存在し，かつ実行できる場合

{% highlight bash %}
if [ -f FILE -a -x FILE ]; then
    # do something
fi
{% endhighlight %}


例. OR 条件: FILE1 か FILE2 のどちらかが存在する場合
{% highlight bash %}
if [ -f FILE1 -o -x FILE1 ]; then
    # do something
fi
{% endhighlight %}


その他の例は `man test` するとだいたいわかる．[RTFM](http://ya.maya.st/web/RTFM.html).


### References

<div class="amazlet-box" style="margin-bottom:0px;"><div class="amazlet-image" style="float:left;margin:0px 12px 1px 0px;"><a href="http://www.amazon.co.jp/exec/obidos/ASIN/4873112540/tomohiro-t-22/ref=nosim/" name="amazletlink" target="_blank"><img src="http://ecx.images-amazon.com/images/I/519CHDKSHWL._SL160_.jpg" alt="入門bash 第3版" style="border: none;" /></a></div><div class="amazlet-info" style="line-height:120%; margin-bottom: 10px"><div class="amazlet-name" style="margin-bottom:10px;line-height:120%"><a href="http://www.amazon.co.jp/exec/obidos/ASIN/4873112540/tomohiro-t-22/ref=nosim/" name="amazletlink" target="_blank">入門bash 第3版</a><div class="amazlet-powered-date" style="font-size:80%;margin-top:5px;line-height:120%">posted with <a href="http://www.amazlet.com/browse/ASIN/4873112540/tomohiro-t-22/ref=nosim/" title="入門bash 第3版" target="_blank">amazlet</a> at 11.04.08</div></div><div class="amazlet-detail">Cameron Newham Bill Rosenblatt <br />オライリージャパン <br />売り上げランキング: 43317<br /></div><div class="amazlet-sub-info" style="float: left;"><div class="amazlet-link" style="margin-top: 5px"><a href="http://www.amazon.co.jp/exec/obidos/ASIN/4873112540/tomohiro-t-22/ref=nosim/" name="amazletlink" target="_blank">Amazon.co.jp で詳細を見る</a></div></div></div><div class="amazlet-footer" style="clear: left"></div></div>
