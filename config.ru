
require 'toto'

use Rack::Static, :urls => ['/css', '/js', '/images', '/favicon.ico'], :root => 'public'
use Rack::CommonLogger

if ENV['RACK_ENV'] == 'development'
  use Rack::ShowExceptions
end

toto = Toto::Server.new do
  set :author,   'Tomohiro'
  set :title,    'log.tomohiro.me'
  set :markdown, :smart
  set :disqus,   'log-tomohiro-me'
  set :ext,      'markdown'                                   # file extension for articles
  # set :root,      "index"                                   # page to load on /
  # set :summary,   :max => 150, :delim => /~/                # length of article summary and delimiter
  # set :cache,      28800                                    # cache duration, in seconds

  set :date, lambda { |now| now.strftime("%B #{now.day.ordinal} %Y") }
end

run toto
