class ChoreApp::ChoresController < ChoreApp::ApplicationController
    before '/chores/*' do
        authentication_required
    end
    
    get '/chores' do
        @chores = current_user.chores
        erb :"chores/index.html"
    end
    
get '/chores/new' do
        erb :"chores/new.html"
    end

    get '/chores/:id' do
        @chore = current_user.chores.find(params[:id])
        erb :"chores/show.html"
    end

    post '/chores' do
        @chore = ChoreApp::Chore.new
        @chore.name = params[:name]
        @chore.description = params[:description]
        @chore.owner = current_user.id
        if @chore.save
            redirect '/chores'
        else 
            erb :"chores/new.html"
        end

    end

    patch '/chores/:id' do
        @chore = ChoreApp::Chore.find(params[:id])
        @chore.update(name: params[:name], description: params[:description])
        redirect "/chores/index.html"
    end


    delete '/chores/:id' do
        @chore = ChoreApp::Chore.find(params[:id])
        @chore.destroy
        redirect '/chores'
    end


        

end

=begin
    Edit
    Complete /Delete
=end
=begin
create_table :chores do |c|
      c.string :name
      c.integer :owner
      c.string :description
      c.datetime :due_date  -- not used yet
      c.boolean :completed
    end
=end
