
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do

  end

  get '/posts/new' do
    erb :new
  end

  post '/posts' do
    Post.new(params)

    @posts = Post.all
    erb :index
  end

  get '/posts' do
    #show all
    erb :index
  end

  get '/posts/:id' do
    erb :show
  end

  get '/posts/:id/edit' do
    erb :edit
  end

  delete '/posts/:id/delete' do
    erb :delete
  end
end
