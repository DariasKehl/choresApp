class ChoreApp::Chore < ActiveRecord::Base
    belongs_to :user


    #has a name
    # has a description
    # has a due date
    # can belong to multiple users?  How? 
  
    # table shared_chores
    # id   chore_id     user ids? <---  ??   
end
