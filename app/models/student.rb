class Student
    attr_reader :first_name
    @@all = []
    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end
    def self.all 
        @@all
    end
    def add_boating_test(test_name, status, instructor)
        BoatingTest.new(self, test_name, "pending", instructor)
    end
    def self.find_student(first_name)
        self.all.find{|student| 
        if student.first_name == first_name
            return student
        end
        }
    end
    def grade_percentage
        tests = BoatingTest.all.find_all{|boatingTest| boatingTest.student == self}
        totalTests = tests.length.to_f
        total = tests.find_all{|t| t.test_status == "passed"}
        floatTotal = total.length.to_f 
        floatTotal / totalTests
    end
end
