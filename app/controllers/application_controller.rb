require './config/environment'

class ChoreApp::ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  use Rack::Flash
  
  configure do
    enable :sessions
    set :session_secret, "BunchaTrashD4T4"
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    erb :welcome
  end

  helpers do
    def logged_in?
      !!current_user # nil (falsy) -> true -> false
    end

    def current_user
      @user ||= ChoreApp::User.find(session[:user_id]) if session[:user_id]
    end

    def authentication_required
      if !logged_in?
        flash[:notice] = "You must be logged in."
        redirect '/'
      end
    end
  end
end
