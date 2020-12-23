class ChoreApp::Chore < ActiveRecord::Base
    has_one :user  
end
