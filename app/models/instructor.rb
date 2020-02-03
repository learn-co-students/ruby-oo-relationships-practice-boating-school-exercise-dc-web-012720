class Instructor
    attr_reader :name 
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    def self.all   
        @@all
    end
    def pass_student(student, test_name)
        if exists(student, test_name)
            return passFail(student, test_name, "passed")
        end
        return BoatingTest.new(student, test_name, "passed", self)
    end
    def fail_student(student, test_name) 
        if exists(student, test_name)
            return passFail(student, test_name, "failed")
        end
        return BoatingTest.new(student, test_name, "failed", self)
    end
    private 
    def exists(student, test_name)
        BoatingTest.all.find{|tests| tests.test_name == test_name && tests.student.first_name == student.first_name}
    end
    def passFail(student, test_name, outcome)
        BoatingTest.all.find do |tests| 
            if tests.test_name == test_name && tests.student.first_name == student.first_name
                return tests.test_status = outcome
            end
        end
    end
end
