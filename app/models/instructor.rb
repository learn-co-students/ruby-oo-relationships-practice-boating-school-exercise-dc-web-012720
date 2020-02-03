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
        BoatingTest.all.find do |test|
            if test.student == student && test.test_name == test_name
                test.test_status = 'passed'
                return test
            end
        end

        BoatingTest.new(student, test_name, 'passed', self)
    end

    def fail_student(student, test_name)
        BoatingTest.all.find do |test|
            if test.student == student && test.test_name == test_name
                test.test_status = 'failed'
                return test
            end
        end

        BoatingTest.new(student, test_name, 'failed', self)
    end
end
