---
layout: post
title: Redmine 1.1.2 の PDF 日本語化パッチ
---

{{ page.title }}
--------------------------------------------------------------------------------

### Patch

<script src="http://gist.github.com/882743.js?file=pdf.rb.to_japanese.patch"></script>


### Apply a patch file

    # cd /var/lib/redmine/lib/redmine/export
    # patch < pdf.rb.to_japanese.patch


### Reference:

- [PDFおよびCSVの文字化けを回避する | Redmine.JP](http://redmine.jp/faq/general/pdfcsv/ "PDFおよびCSVの文字化けを回避する | Redmine.JP")
- [徒然さめざめ 続・何回目？ Redmine pdf日本語化hack](http://fmkt.blog65.fc2.com/blog-entry-148.html "徒然さめざめ 続・何回目？ Redmine pdf日本語化hack")
