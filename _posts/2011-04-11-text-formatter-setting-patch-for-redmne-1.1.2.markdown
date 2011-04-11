---
layout: post
title: Redmine でプロジェクト毎にテキストの書式を選択できるようにするパッチ
categories: [Ruby, Redmine]
---

[プロジェクト毎のフォーマッタ - @tmtms のメモ](http://d.hatena.ne.jp/tmtms/20100923/redmine_formatter)

上記のブログエントリを参考にパッチを書いた．

### 手順

1. patch を適用

       # curl -LO https://gist.github.com/raw/912936/0f7e2dfb9a67a942875dfaef6d7cb4805c920e69/application_helper.rb.choice_text_formatter.patch
       # cd /var/lib/redmine/app/helpers/
       # patch < application_helper.rb.choice_text_formatter.patch

2. カスタムフィールドでプロジェクトに「テキストの書式」を作成

3. プロジェクトの設定画面で「テキストの書式」を選択


### Patch

<script src="https://gist.github.com/912936.js?file=application_helper.rb.choice_text_formatter.patch"></script>


### References:

- [プロジェクト毎のフォーマッタ - @tmtms のメモ](http://d.hatena.ne.jp/tmtms/20100923/redmine_formatter)
