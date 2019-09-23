class Project
    attr_accessor :name, :user, :goal, :running_total
    @@all = []

    def initialize(name,user,goal)
        @name = name
        @user = user
        @goal = goal
        @@all << self unless @@all.any?(self)
        @running_total = 0
    end

    def self.no_pledges
        self.all.reject do |project| 
        Pledge.all.any? { |pledge| pledge.project == project }
        end
    end

    def goal_reached
        running_total >= @goal
    end

    def self.above_goal
        self.all.select { |project| project.goal_reached }
    end

    def project_backers
       my_pledges = Pledge.all.select { |pledge| pledge if pledge.project == self }
       my_users = my_pledges.map { |pledge| pledge.user }
       my_users.uniq
    end

    def self.most_backers
        @@all.max_by do |project|
        project.project_backers.length   
        end
    end

    def self.all
        @@all
    end

end


