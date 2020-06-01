require 'sinatra/base'

class Bookmark < Sinatra::Base

  get '/' do
    'bookmark manager'
  end

  run! if app_file == $0

end
