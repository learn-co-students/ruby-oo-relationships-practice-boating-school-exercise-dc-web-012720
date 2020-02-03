require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

spongebob = Student.new("Spongebob")
patrick = Student.new("Patrick")

puff = Instructor.new("Ms. Puff")
krabs = Instructor.new("Mr. Krabs")

test1 = BoatingTest.new(spongebob,"Boating Exam","pending",puff)
test2 = BoatingTest.new(patrick,"Boating Exam","failed",puff)
test3 = BoatingTest.new(spongebob,"Cooking Exam","passed",krabs)
binding.pry
0 #leave this here to ensure binding.pry isn't the last line

