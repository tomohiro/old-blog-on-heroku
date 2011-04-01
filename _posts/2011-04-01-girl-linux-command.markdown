---
layout: post
title: 美女 Linux コマンド
categories: [Ruby]
---

Ruby で[美女 Linux](http://bijo-linux.com/) の検索結果を見るコマンドを作ってみた．

かといって美女が CLI で見れるわけではないので，man で OK って話なんだが...

{% highlight ruby %}
#!/usr/bin/env ruby

require 'open-uri'

require 'rubygems'
require 'nokogiri'

class GirlLinux
  def self.search(cmd)
    uri = "http://bijo-linux.com/girls/#{cmd}"
    begin
      html = Nokogiri::HTML(open(uri).read)
      (html/'p/span').each do |content|
        puts content.text
      end
      puts "\nURL: #{uri}"
    rescue
      puts "No girl entry for #{cmd}"
    end
  end
end

GirlLinux.search ARGV.first if __FILE__ == $0
{% endhighlight %}


上記のコードを `girl` として `$HOME/bin` などに置くとシェルから呼び出せる．

{% highlight bash %}
$ girl kill
【説明】
指定したプロセスを終了する
【書式】
kill  [オプション]  プロセスID
【オプション】
-s           プロセスに送るシグナルを指定
-l            シグナル名の一覧を表示する

URL: http://bijo-linux.com/girls/kill
{% endhighlight %}
