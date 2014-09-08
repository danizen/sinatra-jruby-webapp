require 'sinatra/base'

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/next' do
    erb :next
  end

  get '/css/:name' do |name|
    path = "./assets/css/#{name}"
    send_file path, :disposition => :inline
  end

end
