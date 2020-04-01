require 'sinatra'
require "sinatra/basic_auth"

authorize do |username, password|
  username == "john" && password == "doe"
end

# Set protected routes
protect do
  get "/" do
    "Permission granted"
  end
end