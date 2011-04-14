---
layout: post
title: LL でリスト/配列をループ処理する時のイディオム
categories: [Ruby, Perl, Python, PHP, JavaScript]
---

### リスト/配列の値を順番に評価する

PHP (Array)
{% highlight php %}
<?php
$l = array('foo', 'bar', 'baz');
foreach ($l as $v) {
    /* do something */
}
{% endhighlight %}

Perl (Array)
{% highlight perl %}
my @l = qw/foo bar baz/;
foreach my $v (@l) {
    # do something
}
{% endhighlight %}

Ruby (Array)
{% highlight ruby %}
l = %w[foo bar baz]
l.each do |v|
  # do something
end
{% endhighlight %}

Python (list)
{% highlight python %}
l = ['foo', 'bar', 'baz']
for v in l:
    # do something
{% endhighlight %}

JavaScript (Array)
{% highlight javascript %}
var l = ['foo', 'bar', 'baz'];
for (var i = 0; i < l.length; i++) {
    /* do something */
}
{% endhighlight %}

### リスト/配列のインデックスと値を順番に評価する

PHP (Array)
{% highlight php %}
<?php
$l = array('foo', 'bar', 'baz');
foreach ($l as $i => $v) {
    /* do something */
}
{% endhighlight %}

Perl (Array)
{% highlight perl %}
my @l = qw/foo bar baz/;
foreach my $i (0..$#l) {
    # do something
}
{% endhighlight %}

Ruby (Array)
{% highlight ruby %}
l = %w[foo bar baz]
l.each_with_index do |v, i|
  # do something
end
{% endhighlight %}

Python (list)
{% highlight python %}
l = ['foo', 'bar', 'baz']
for i, v in enumerate(l):
    # do something
{% endhighlight %}

JavaScript (Array)
{% highlight javascript %}
var l = ['foo', 'bar', 'baz'];
for (var i = 0; i < l.length; i++) {
    /* do something l[i] */
}
{% endhighlight %}


### References:

- [PHP: foreach - Manual](http://php.net/manual/ja/control-structures.foreach.php "PHP: foreach - Manual")
- [Enumerable - Rubyリファレンスマニュアル](http://www.ruby-lang.org/ja/man/html/Enumerable.html)
- [複合文 (compound statement) — Python v2.6.2 documentation](http://www.python.jp/doc/release/reference/compound_stmts.html#for)
- [for - MDC Doc Center](https://developer.mozilla.org/ja/JavaScript/Reference/Statements/for)
