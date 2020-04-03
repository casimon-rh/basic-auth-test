require 'sinatra'
require "sinatra/basic_auth"

authorize do |username, password|
  username == "john" && password == "doe"
end

before do
  content_type 'application/json'
end
# Set protected routes
protect do
  get "/" do
    "{\"resultadoOperacion\": \"01\", \"motivoRechazo\": \"aaa\"}"
  end
end