require 'sinatra'

get '/' do
  redirect to('http://tomohiro.me')
end

get '/atom.xml' do
  redirect to('http://tomohiro.me/atom.xml')
end

get '/archive.html' do
  redirect to('http://tomohiro.me/posts/')
end

get '/entries/:post' do
  redirect to("http://tomohiro.me/posts/#{params[:post]}/")
end
