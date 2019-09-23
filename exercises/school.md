class period

#has a teacher
#has many students (method returns an array of students)
#has a time
#gpa returns average of students grades from all class periods

.popular_class returns a class with most students
.all

class students

# has many class periods (returns an array of class periods)
# has many teachers through class period (returns an array of teachers)

.busy_student returns the student with most class periods

class teacher

#has many students through class period (returns all students)
#has many class periods (returns array of all class periods)
#give_grade takes an argument of a student, class period, and number and assigns a grade to a student

.all returns all teachers
.mega_teacher returns teacher with the most students
.busy_teacher returns the teacher with the most class periods


