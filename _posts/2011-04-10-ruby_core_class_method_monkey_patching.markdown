---
layout: post
title: Ruby で組み込みクラスのメソッドを上書きする
categories: [Ruby]
---

> 「Rubyは君を信頼する。Rubyは君を分別のあるプログラマとして扱う。Rubyはメタプログラミングのような強力な力を与える。ただし、大いなる力には、大いなる責任が伴うことを忘れてはいけない」 - まつもとゆきひろ

Ruby では下記のように，例え組み込みクラスでもメソッドを別名にしたり，オーバライドしたりと，モンキーパッチングが自由に出来る．
ただし悪用は厳禁．

{% highlight ruby %}
class << Time
  alias_method :now_original, :now

  def now
    puts 'override'
  end
end

puts Time.now
puts Time.now_original
{% endhighlight %}

### References:

<div class="amazlet-box" style="margin-bottom:0px;"><div class="amazlet-image" style="float:left;margin:0px 12px 1px 0px;"><a href="http://www.amazon.co.jp/exec/obidos/ASIN/4048687158/tomohiro-t-22/ref=nosim/" name="amazletlink" target="_blank"><img src="http://ecx.images-amazon.com/images/I/51TODrMIEnL._SL160_.jpg" alt="メタプログラミングRuby" style="border: none;" /></a></div><div class="amazlet-info" style="line-height:120%; margin-bottom: 10px"><div class="amazlet-name" style="margin-bottom:10px;line-height:120%"><a href="http://www.amazon.co.jp/exec/obidos/ASIN/4048687158/tomohiro-t-22/ref=nosim/" name="amazletlink" target="_blank">メタプログラミングRuby</a><div class="amazlet-powered-date" style="font-size:80%;margin-top:5px;line-height:120%">posted with <a href="http://www.amazlet.com/browse/ASIN/4048687158/tomohiro-t-22/ref=nosim/" title="メタプログラミングRuby" target="_blank">amazlet</a> at 11.04.10</div></div><div class="amazlet-detail">Paolo Perrotta <br />アスキー・メディアワークス <br />売り上げランキング: 29046<br /></div><div class="amazlet-sub-info" style="float: left;"><div class="amazlet-link" style="margin-top: 5px"><a href="http://www.amazon.co.jp/exec/obidos/ASIN/4048687158/tomohiro-t-22/ref=nosim/" name="amazletlink" target="_blank">Amazon.co.jp で詳細を見る</a></div></div></div><div class="amazlet-footer" style="clear: left"></div></div>
