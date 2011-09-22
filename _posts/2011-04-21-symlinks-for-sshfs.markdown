---
layout: post
title: sshfs でシンボリックリンクを扱う
category: Linux
---

`sshfs` で ssh サーバのディレクトリをローカルにマウントしている場合，シンボリックリンクがたどれなくて困っていたが，`-o follow_symlinks` というオプションを追加してマウントすると問題なくたどれるようになった．

{% highlight bash %}
$ sshfs username@REMOTE_HOST:REMOTE_PATH LOCAL_PATH -o follow_symlinks
{% endhighlight %}


### References

- [SourceForge.net: SshfsFaq - fuse](http://sourceforge.net/apps/mediawiki/fuse/index.php?title=SshfsFaq#Following_symlinks_on_the_server_side)
