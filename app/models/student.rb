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

    def add_boating_test(test_name_str, test_status_str, instructor_obj)
        BoatingTest.new(self, test_name_str, test_status_str, instructor_obj)
    end

    def self.find_student(first_name)
        @@all.detect do |student_obj|
            student_obj.first_name == first_name
        end
    end

    def find_boating_tests
        BoatingTest.all.select do |test_obj|
            test_obj.student == self
        end
    end

    def total_boating_tests_completed
        self.find_boating_tests.count
    end

    def passed_tests_count
        passed_tests = self.find_boating_tests.select do |test_obj|
            test_obj.test_status == "passed"
        end

        if passed_tests
            number_passed = passed_tests.count.to_f
        else
            number_passed = 0
        end
    end


    def grade_percentage
        
       self.passed_tests_count / self.total_boating_tests_completed * 100
  
    end

end
