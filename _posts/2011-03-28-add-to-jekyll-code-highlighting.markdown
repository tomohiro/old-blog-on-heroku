---
layout: post
title: Jekyll にコードハイライティングを追加
categories: [Ruby, Jekyll]
---

### 設定を変更する

_config.yml に pygments オプションを追加する．

{% highlight yaml %}
pygments: true
{% endhighlight %}


### CSS を読み込む

pygments が生成する HTML に適用できる CSS を用意する必要がある．
例えば [syntax.css](http://github.com/mojombo/tpw/tree/master/css/syntax.css) を使う．

後は HTML 側で読み込む．

{% highlight ruby %}
<link rel="stylesheet" href="/css/syntax.css" media="screen">
{% endhighlight %}


### 記事の中にコードハイライティングの指定をする

記法:

<pre><code>{&#037; highlight ruby &#037;}
def foo
  puts 'foo'
end
{&#037; endhighlight &#037;}
</code></pre>


結果:

{% highlight ruby %}
def foo
  puts 'foo'
end
{% endhighlight %}


### Reference:

- [Liquid Extensions - GitHub](https://github.com/mojombo/jekyll/wiki/Liquid-Extensions "Liquid Extensions - GitHub")
