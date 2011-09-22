---
layout: post
title: LL で異常終了処理する時のイディオム
categories: [Ruby, PHP, Python, Perl]
---

エラーの際に，メッセージを表示して，プログラムを終了させるという流れを LL で実装する方法を調査してみた．

Ruby/Python/Perl はほぼ想定された動作をしたが，PHP のみ `die` の引数に文字列を渡すと，ステータスコード "0" を返す，という謎の挙動を示した．

調べてみたところバグではなく PHP の仕様ではあったのだが，個人的にはイケてないなぁと思う．

### Ruby

サンプル
{% highlight ruby %}
#!/usr/bin/env ruby

abort 'Error'
{% endhighlight %}

ステータスコード
{% highlight bash %}
$ ruby -e "abort 'Error'"
Error
$ echo $?
1
{% endhighlight %}


### Perl

サンプル
{% highlight perl %}
#!/usr/bin/env perl
use strict;
use warnings;

die 'Error';
{% endhighlight %}

ステータスコード
{% highlight bash %}
$ perl -e "die 'Error'"
Error at -e line 1.
$ echo $?
255
{% endhighlight %}


### Python

サンプル
{% highlight python %}
#!/usr/bin/env python
import sys

sys.exit('Error')
{% endhighlight %}

ステータスコード
{% highlight bash %}
$ python -c "import sys; sys.exit('Error')"
Error
$ echo $?
1
{% endhighlight %}


### PHP

サンプル
{% highlight php %}
#!/usr/bin/env php
<?php

echo 'Error' . PHP_EOL;
die(1);
{% endhighlight %}

ステータスコード
{% highlight bash %}
$ php -r "die('Error' . PHP_EOL);"
Error
$ echo $?
0
$ php -r "echo 'Error' . PHP_EOL; die(1);"
Error
$ echo $?
1
{% endhighlight %}


### References

- [28.1. sys — システムパラメータと関数 — Python v2.6.2 documentation](http://www.python.jp/doc/2.6/library/sys.html)
- [PHP: die - Manual](http://www.php.net/manual/ja/function.die.php)
- [組み込み関数 - Rubyリファレンスマニュアル](http://www.ruby-lang.org/ja/man/html/_C1C8A4DFB9FEA4DFB4D8BFF4.html#abort)
- [404 Blog Not Found:perl - use Carp; # warn() と die() だけじゃなくて](http://blog.livedoor.jp/dankogai/archives/51073468.html)
