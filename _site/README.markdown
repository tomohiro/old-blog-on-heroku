
### Install RubyGems

    $ gem install jekyll
    $ gem install rack-jekyll


### Create blog directory

    $ mkdir blog
    $ cd blog
    $ mkdir _layouts _posts _site css
    $ vi _config.yml 
    $ vi _layouts/default.html
    $ vi _layouts/post.html
    $ vi index.html


### Create rack application for heroku

    $ vi config.ru
    $ echo rack-jekyll > .gems

### Push Heroku

    $ heroku create tomohiro
    $ git push heroku master
    The authenticity of host 'heroku.com (50.16.232.130)' can't be established.
    RSA key fingerprint is 8b:48:5e:67:0e:c9:16:47:32:f2:87:0c:1f:c8:60:ad.
    Are you sure you want to continue connecting (yes/no)? yes
    Warning: Permanently added 'heroku.com,50.16.232.130' (RSA) to the list of known hosts.
    Counting objects: 238, done.
    Compressing objects: 100% (120/120), done.
        Writing objects: 100% (238/238), 27.88 KiB, done.
    Total 238 (delta 94), reused 215 (delta 92)

        -----> Heroku receiving push
        -----> Rack app detected

        -----> Installing gem rack-jekyll from http://rubygems.org
        Building native extensions.  This could take a while...
        Successfully installed liquid-2.2.2
        Successfully installed fast-stemmer-1.0.0
        Successfully installed classifier-1.3.3
        Successfully installed directory_watcher-1.4.0
        Successfully installed syntax-1.0.0
        Successfully installed maruku-0.6.0
        Successfully installed jekyll-0.10.0
        Successfully installed rack-jekyll-0.3.5
        8 gems installed

        Compiled slug size is 544K
        -----> Launching... done
        http://tomohiro.heroku.com deployed to Heroku

        To git@heroku.com:tomohiro.git
        * [new branch]      master -> master
