  require 'sinatra'
  # require 'sinatra/reloader'
  require 'colorize'

  class MyApp < Sinatra::Base
    # register Sinatra::Reloader

    get '/amazing' do #display /// views
      @fav_animal = "Red Panda"
      erb :amazing #erb is a method, :amazing is the argument erb (:amazing)
    end


    get '/' do
      send_file 'index.html'
    end

    get '/dynamic_rut/:names' do
      erb :kitty
      # send_file 'index.html'
    end

    get '/portfolio' do
      send_file 'portfolio.html'
    end

    get '/journal' do
      send_file 'code-journal.html'
    end

    get '/about' do
      send_file 'about.html'
    end

    run!
  end
