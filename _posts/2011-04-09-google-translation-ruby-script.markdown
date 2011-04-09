---
layout: post
title: Google 翻訳する Ruby スクリプト
categories: [Ruby]
---

英和と和英限定です．

英和なのか，和英なのかは自動的に判別するようになっています．

### 使い方

{% highlight bash %}
$ curl -LO https://gist.github.com/raw/551073/5a8b7c5ae265fe61633c8ac9200ef09b8a3ccec6/gt 
$ mv gt ~/bin/
$ chmod +x ~/bin/gt
$ gt 長文の翻訳にも対応しています。
Also supports a lengthy translation.
$ gt Also supports a lengthy translation.
また、長い翻訳をサポートしています。
{% endhighlight %}


### ソース

<script src="https://gist.github.com/551073.js?file=gt"></script>


### References:

<div class="amazlet-box" style="margin-bottom:0px;"><div class="amazlet-image" style="float:left;margin:0px 12px 1px 0px;"><a href="http://www.amazon.co.jp/exec/obidos/ASIN/4873113679/tomohiro-t-22/ref=nosim/" name="amazletlink" target="_blank"><img src="http://ecx.images-amazon.com/images/I/41gCZhFayuL._SL160_.jpg" alt="初めてのRuby" style="border: none;" /></a></div><div class="amazlet-info" style="line-height:120%; margin-bottom: 10px"><div class="amazlet-name" style="margin-bottom:10px;line-height:120%"><a href="http://www.amazon.co.jp/exec/obidos/ASIN/4873113679/tomohiro-t-22/ref=nosim/" name="amazletlink" target="_blank">初めてのRuby</a><div class="amazlet-powered-date" style="font-size:80%;margin-top:5px;line-height:120%">posted with <a href="http://www.amazlet.com/browse/ASIN/4873113679/tomohiro-t-22/ref=nosim/" title="初めてのRuby" target="_blank">amazlet</a> at 11.04.09</div></div><div class="amazlet-detail">Yugui <br />オライリージャパン <br />売り上げランキング: 20994<br /></div><div class="amazlet-sub-info" style="float: left;"><div class="amazlet-link" style="margin-top: 5px"><a href="http://www.amazon.co.jp/exec/obidos/ASIN/4873113679/tomohiro-t-22/ref=nosim/" name="amazletlink" target="_blank">Amazon.co.jp で詳細を見る</a></div></div></div><div class="amazlet-footer" style="clear: left"></div></div>
