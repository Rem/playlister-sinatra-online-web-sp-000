class SongsController <ApplicationController
  get '/' do
    @songs = Song.all
    erb :'/songs/index'
  end

  get '/songs' do
    @songs = Song.all
    erb :'/songs/index'
  end

  get '/songs/new' do
    erb :new
  end

  get '/songs/:slug' do
    @song = Song.find_by_slug(params[:slug])
  erb :show
  end

  get '/songs/:id' do
    @song = Song.find_by_id(params[:id])
    erb :'/songs/show'
  end

end
