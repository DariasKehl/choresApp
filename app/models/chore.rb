class ChoreApp::Chore < ActiveRecord::Base
    belongs_to :user


    #has a name
    # has a description
    # has a due date
    # can belong to multiple users?  How? 
  
    # table shared_chores
    # id   chore_id     user ids? <---  ??   


end

=begin    
    attr_accessor :name, :description, :due_date, :owner
    
    #attr_reader 
    #attr_writer
    
    @@ALL = []

    def initialize (name, owner, desc, due_date)
        @name = :name
        @owner = :owner if owner
        @desc = :description if desc
        @due_date = :due_date if due_date
        @@ALL << self
    end

    def self.create(name, owner = nil, desc = nil, due_date = nil)
        new(name, owner, desc, due_date)
    end

    def self.all #returns all the chores
        @ALL
    end

    def self.complete
        #responsibly removeoneself from the array, 
        #then also the database.

    end

end
=end

