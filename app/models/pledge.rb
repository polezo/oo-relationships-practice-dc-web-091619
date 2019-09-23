class Pledge
    attr_reader :user, :project, :amount, :time
    
    @@all = []
    
    def initialize(project,user,amount)
        @user = user
        @project = project
        @amount = amount
        @@all << self
        @time = Time.now
        project.running_total += amount

    end

    def self.all
        @@all
    end

end