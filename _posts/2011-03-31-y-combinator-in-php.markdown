---
layout: post
title: PHP で Y コンビネータ
categories: [PHP]
---


### Y コンビネータ関数を作る

PHP で Y コンビネータ [`Y(F) = F(Y(F))`] を行う関数 Y を定義してみる．

以下のコードは PHP 5.3+ な環境で動作する．

{% highlight php %}
<?php
function Y($F) {
    return $F(
        function() use($F) {
            return call_user_func_array(Y($F), func_get_args());
        }
    );
}
{% endhighlight %}


### Y コンビネータを使用して無名な再帰関数を作る

#### 階乗

{% highlight php %}
<?php
echo Y(
    function($fact) {
        return function($x) use ($fact) {
            return $x == 1 ? 1 : $x * $fact($x - 1);
        };
    })->__invoke(10); // 3628800
{% endhighlight %}

#### フィボナッチ数

{% highlight php %}
<?php
echo Y(
    function($fib) {
        return function($n) use ($fib) {
            return $n <= 2 ? 1 : $fib($n - 1) + $fib($n - 2);
        };
    })->__invoke(10); // 55
{% endhighlight %}

#### ハノイの塔

{% highlight php %}
<?php
Y(
    function($hanoi) {
        return function($n, $a, $b, $c) use ($hanoi) {
            if ($n > 0) {
                $hanoi($n - 1, $a, $c, $b);
                echo "No. $n disk is moved from $a to $b" . PHP_EOL;
                $hanoi($n - 1, $c, $b, $a);
            }
        };
    }
)->__invoke(64, 'A', 'B', 'C');
{% endhighlight %}


### References:

- [不動点コンビネータ - Wikipedia](http://ja.wikipedia.org/wiki/%E4%B8%8D%E5%8B%95%E7%82%B9%E3%82%B3%E3%83%B3%E3%83%93%E3%83%8D%E3%83%BC%E3%82%BF)
- [Y コンビネータって何？ - IT戦記](http://d.hatena.ne.jp/amachang/20080124/1201199469)
