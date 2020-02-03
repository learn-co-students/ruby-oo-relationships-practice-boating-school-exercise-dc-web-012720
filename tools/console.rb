require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

test_name1 = "first test"
test_name2 = "second test"
test_name3 = "final attempt"

jon = Student.new("Jon Doe")
jane = Student.new("Jane Doe")

bob = Instructor.new("Mr Bob")
willie = Instructor.new("Mr Willie")

test1 = BoatingTest.new(jon, test_name1, "pending", bob)
test2 = BoatingTest.new(jon, test_name2, "pending", willie)
test3 = BoatingTest.new(jon, test_name3, "pending", willie)
test4 = BoatingTest.new(jane, test_name1, "pending", bob)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line

