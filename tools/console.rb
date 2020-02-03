require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

stud1 = Student.new("Spongebob")
stud2 = Student.new("Patrick")

inst1 = Instructor.new("Ms. Puff")
inst2 = Instructor.new("Mr. Krabs")

test1 = stud1.add_boating_test("Don't Crash 101", "pending", inst1)
test2 = stud2.add_boating_test("Power Steering 202", "failed", inst1)
test3 = stud2.add_boating_test("Power Steering 201", "passed", inst2)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line

