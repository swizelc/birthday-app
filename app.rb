require 'sinatra'

class BirthdayApp < Sinatra::Base
  run! if app_file == $0
  get '/' do
    erb(:index)
  end
end 
