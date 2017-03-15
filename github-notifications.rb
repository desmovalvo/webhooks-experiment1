#!/usr/bin/ruby

# requirements
require 'sinatra'
require 'json'

# configure Sinatra to listen everywhere
set :bind, '0.0.0.0'

# INIT
$messages = []

# POST
post '/github-nots' do
  $messages.push(JSON.parse(request.body.read))
end

# GET
get '/github-nots' do 
  erb :index
end