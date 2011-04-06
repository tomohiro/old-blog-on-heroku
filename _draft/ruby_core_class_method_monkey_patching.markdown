
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
