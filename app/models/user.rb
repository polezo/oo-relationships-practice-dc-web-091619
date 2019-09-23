class User
    attr_reader :name
    @@all = []

    def initialize(name)
        @name=name
        @@all << self unless @@all.any?(self)
    end

    def self.all
        @@all
    end

    def users_pledges
        Pledge.all.select { |pledge| pledge.user == self}
    end

    def self.highest_pledge
        highest_pledge = Pledge.all.max_by { |pledge| pledge.amount }
        highest_pledge.user
    end

    def self.project_creator
        self.all.select do |user| 
        Project.all.any? { |project| project.user == user }
        end
    end

    def my_projects
        my_pledges = Pledge.all.select { |pledge| pledge if pledge.user == self }
        my_proj = my_pledges.map { |pledge| pledge.project }
        my_proj.uniq
     end

    def self.multi_pledger
        @@all.select { |user| user.my_projects.length > 1 }
    end

end


