class ChoreApp::chore < ActiveRecord:Base
    
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

    def self.all
        @ALL
    end

end
