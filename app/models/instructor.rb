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

    def tests
        BoatingTest.all.select {|t| t.instructor == self}        
    end

    def students
        tests.map {|t| t.student}
    end

    def pass_student(student,exam)
        boating_test = self.tests.find {|t| t.boating_test == exam and t.student == student}
        if boating_test
            boating_test.status = "passed"
        else
            BoatingTest.new(student,exam,"passed",self)
        end
    end

    def fail_student(student,exam)
        boating_test = self.tests.find {|t| t.boating_test == exam and t.student == student}
        if boating_test
            boating_test.status = "failed"
        else
            BoatingTest.new(student,exam,"failed",self)
        end
end
