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

    def self.find_student(first_name)
        self.all.select {|student| student.first_name == first_name}
    end

    def add_boating_test(exam,instructor)
        BoatingTest.new(self,exam,"pending",instructor)
    end
    
    def tests
        BoatingTest.all.select {|btest| btest.student == self}
    end

    def passing_tests
        self.tests.select {|btest| btest.status == "passed"}
    end

    def grade_percentage
        self.passing_tests.count.to_f / self.tests.count.to_f * 100.0
    end
end