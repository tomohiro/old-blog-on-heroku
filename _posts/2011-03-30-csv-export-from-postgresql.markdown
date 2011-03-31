---
layout: post
title: PostgreSQL から CSV ファイルをエクスポートする
categories: [SQL, PostgreSQL]
---

カンマ区切りの一般的な CSV を吐き出す場合はこのようなコマンドを実行すれば良い．

{% highlight bash %}
$ psql -U {user} {dbname} -c 'SELECT * FROM example' -A -F, > example.csv
{% endhighlight %}


カラムのデータに改行コードが含まれる場合，出力する CSV を Excel などで開くと
途中で改行されてしまい，大変残念な感じになる．
その場合は，改行が含まれるカラムのデータを下記のように変更する必要がある．

- CRLF を LF に変更
- ダブルクォーテーションでくくる

{% highlight sql %}
SELECT
   '"' || REPLACE(e.description '\r\n', '\n') || '"' AS description
FROM
   example AS e
{% endhighlight %}

{% highlight bash %}
$ psql -U {user} {dbname} -f export_example_to_csv.sql -A -F, > example.csv
{% endhighlight %}
