$ gem i bluefeather --no-ri --no-rdoc
$ wget "https://github.com/juno/redmine_markdown_extra_formatter/tarball/master" --no-check-certificate
$ tar zxvf master
$ mv juno-redmine_markdown_extra_formatter-01da13c/ redmine_markdown_extra_formatter
$ chown webmagic:webmagic -R redmine_markdown_extra_formatter/
$ mv redmine_markdown_extra_formatter/ /var/lib/redmine/vendor/plugins/
$ chown redmine:redmine public/plugin_assets/
$ /etc/init.d/apache2 restart
