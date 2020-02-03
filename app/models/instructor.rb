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

    def pass_student(student_obj, test_name_str)
        BoatingTest.all.each do |test_obj|
            if test_obj.test_name == test_name_str && test_obj.student == student_obj
                test_obj.status = "passed"
                return test_obj
            else
                new = BoatingTest.new(student_obj, test_name_str, "passed", self)
                return new
            end
        end

    end

    def fail_student(student_obj, test_name_str)
     BoatingTest.all.each do |test_obj|
            if test_obj.test_name == test_name_str && test_obj.student == student_obj
                test_obj.status = "failed"
                return test_obj
            else
                new = BoatingTest.new(student_obj, test_name_str, "failed", self)
                return new
            end
        end

    end

end
