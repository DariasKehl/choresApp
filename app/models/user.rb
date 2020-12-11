
class ChoreApp::User < ActiveRecord::Base
    has_secure_password
    has_many :chores
end

=begin

    attr_reader :chores
    def initialize (name, email, password)
        @name = name
        @email = email
        @password = password

        @chores = []
        
    end

    #Display chores
    def display_chores
        @chores.each_with_index |c, i| do
            puts "#{i}: #{c}."
        end
    end

    # Mark a chore complete, remove from the task
    def complete_own_chore ()
    end

    # Parents - make new chores.
    def create_chore #receive input from web form
    end

    # Parents - move chore 
    def assign_chore
    end
end
=end