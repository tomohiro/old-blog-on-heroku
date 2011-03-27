---
layout: post
title: Gist に CSS を適用する方法
---

{{ page.title }}
--------------------------------------------------------------------------------

Blog などに Gist の embed を貼りつける時に，見た目をカスタマイズする方法．

Firebug などで，JavaScript が展開した Gist の HTML 要素がわかるので，それに対して普通に CSS を書けば良い

例えばソースコードのフォントを変えたい場合は，下記のように CSS を書く．


    div.gist-highlight pre .line {
        font-family: Inconsolata, Consolas, 'Courier New', monospace;
    }


### Reference

- [gist を blog に embed する時の見た目や色（CSS） を変える](http://valvallow.blogspot.com/2010/10/gist-blog-embed-css.html)
- [ダイアリーに貼り付けるgistのコードの見た目をカスタマイズする](http://d.hatena.ne.jp/snaka72/20081218/1229622900)
