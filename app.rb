require 'sinatra'
require_relative 'birthday_calculator'

class BirthdayApp < Sinatra::Base
  run! if app_file == $0
  enable :sessions
  get '/' do
    erb(:index)
  end

  post '/birthday' do
    session[:name] = params[:name]
    session[:is_bday] = calculate_bday(params[:date], params[:month])
    redirect '/display'
  end

  get '/display' do
    @name = session[:name]
    @is_bday = session[:is_bday]
    erb(:display)
  end
end
