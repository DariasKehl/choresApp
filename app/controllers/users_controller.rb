class ChoreApp::UsersController < ChoreApp::ApplicationController
    
    # get '/' do
    #     "Hello, World."
    # end

    get '/register' do
        erb :'users/new.html'
    end

    post '/users' do
        @user = ChoreApp::User.new
        @user.email = params[:email]
        @user.password = params[:password]
        @user.name = params[:name]

        if @user.save
            redirect '/chores'
        else
            erb :'users/new.html'
        end
    end

    get '/login' do
        erb :'users/login.html'
    end

    post '/login' do
        @user = ChoreApp::User.find_by(:email => params[:email])
        if @user && @user.authenticate(params[:password])
            session["user_id"] = @user.id
            redirect '/chores'
            
        else
            erb :'/users/login.html'
        end

    end

    get '/logout' do
        session.clear
        redirect '/'
    end

end