require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#School

jimmy_s = Student.new("jimmy")
jane_s = Student.new("jane")

tom_t = Teacher.new("tom")
sandy_t = Teacher.new("sandie")

english_c = ClassPeriod.new(tom_t,"English")
algebra_c = ClassPeriod.new(sandy_t,"Algebra")
spanish_c = ClassPeriod.new(tom_t,"Spanish")
french_c = ClassPeriod.new(tom_t,"French")

jimmy_s.assigning_student(english_c)
jimmy_s.assigning_student(french_c)
jimmy_s.assigning_student(algebra_c)

jane_s.assigning_student(spanish_c)
jane_s.assigning_student(algebra_c)

tom_t.give_grade(jimmy_s, english_c, 100)
tom_t.give_grade(jimmy_s, french_c, 80)
sandy_t.give_grade(jimmy_s, algebra_c, 60)
sandy_t.give_grade(jane_s, algebra_c, 80)
tom_t.give_grade(jane_s, spanish_c, 100)







#CrowdFunding

# bob = User.new("bob")
# joe = User.new("joe")
# jane = User.new("jane")
# jenny = User.new("jenny")

# this_project = Project.new("this project",jenny,200)
# that_project = Project.new("that project",bob,2000)
# no_pledge1 = Project.new("no pledge 1",bob,100000000000)
# no_pledge2 = Project.new("no pledge 2",jenny,1)
# no_pledge3 = Project.new("no pledge 3",joe,1)
# last_project = Project.new("last project",joe,7)

# bob_pledge = Pledge.new(this_project,bob,100)
# bob_pledge2 = Pledge.new(that_project,bob,100)
# jane_pledge = Pledge.new(that_project,jane,1800)
# jimmy_pledge = Pledge.new(that_project,jenny,100)
# this_pledge = Pledge.new(this_project,joe,1)
# another_pledge = Pledge.new(this_project,jane,1)
# another_pledge2 = Pledge.new(this_project,jenny,1)
# last_proj_pledge = Pledge.new(last_project,jenny,7)


# #### User

# # - .highest_pledge
# #   - returns the user who has made the highest pledge

# puts User.highest_pledge.name

# # - .multi_pledger
# #   - returns all users who have pledged to multiple projects

# puts User.multi_pledger[0].name

# # - .project_creator
# #   - returns all users who have created a project

# puts User.project_creator

# #### Project

# # - .no_pledges
# #   - returns all projects which have no pledges yet

# puts Project.no_pledges[0].name
# puts Project.no_pledges.length

# # - .above_goal
# #   - returns all projects which have met or exceeded their pledge goal

# puts Project.above_goal.length

# # - .most_backers
# #   - returns the project with the highest number of backers

# puts Project.most_backers.name

# #### Pledge

# # - #project
# #   - returns the project associated with a particular pledge

# puts this_pledge.project.name

# # - #user
# #   - returns the user associated with a particular pledge

# puts this_pledge.user.name

##LYFT

# joey_p = Passenger.new("Joey")
# jane_p = Passenger.new("Jane")
# john_p = Passenger.new("John")

# jimmy_d = Driver.new("Jimmy")
# jenny_d = Driver.new("Jenny")
# julia_d = Driver.new("Julia")



# ride1 = Ride.new(joey_p,jimmy_d,50)
# ride2 = Ride.new(joey_p,jimmy_d,51)
# ride3 = Ride.new(jane_p,jenny_d,50)
# ride4 = Ride.new(jane_p,julia_d,33)
# ride5 = Ride.new(john_p,julia_d,35)
# ride6 = Ride.new(jane_p,julia_d,25)
# ride7 = Ride.new(jane_p,julia_d,10)



# # puts Passenger.premium_members[0].name
# # puts Passenger.premium_members[1].name

# puts Driver.mileage_cap(100)[1].name
# puts julia_d.total_distance

# puts Ride.average_distance

# puts julia_d.rides
# puts julia_d.passengers

# puts jane_p.total_distance

#BAKERY

# bakery1 = Bakery.new("bakeryOne")

# this = bakery1.ingredients

# chocolate_cake = Dessert.new("chocolate cake", bakery1)
# chocolate_milk = Dessert.new("chocolate milk",bakery1)

# milk = Ingredient.new("milk",chocolate_milk,25)

# chocolate_sprinkles = Ingredient.new("chocolate sprinkles", chocolate_cake, 50)
# chocolate_frosting = Ingredient.new("chocolate frosting", chocolate_cake, 100)

# vanilla_extract = Ingredient.new("vannilla extract", chocolate_cake, 10)

# chocolate_arr = Ingredient.find_all_by_name("chocolate")

# avg_cal = bakery1.average_calories

# choco_cal = chocolate_cake.calories

binding.pry

0