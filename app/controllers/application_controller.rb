
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do 
    erb :index 
  end
  
  get '/articles' do
    @article = Article.all 
    erb :index
  end
  
  
  get '/articles/new' do
    erb :new
  end
  
  post '/articles' do
    binding.pry
  @article = Article.create(params)
redirect '/articles/#{article:id}'
  end

  get '/articles/:id' do
    @article = Article.find(params[:id])
    erb :show
  end
end
