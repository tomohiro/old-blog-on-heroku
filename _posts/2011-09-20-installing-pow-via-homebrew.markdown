---
layout: post
title: Installing Pow via Homebrew
category: Ruby
---


### Uninstalling Pow (If you have already insatlled Pow)

{% highlight sh %}
$ curl get.pow.cx/uninstall.sh | sh
{% endhighlight %}


### Installing Pow via Homebrew

{% highlight sh %}
$ brew install pow
$ sudo pow --install-system # Sets up firewall rules to forward port 80 to Pow
$ pow --install-local # Installs launchd agent to start on login
{% endhighlight %}


### Reference

- [Pow: Zero-configuration Rack server for Mac OS X](http://pow.cx/)
- [Library/Formula/pow.rb at master from mxcl/homebrew - GitHub](https://github.com/mxcl/homebrew/blob/master/Library/Formula/pow.rb) 
