class Instructor

    attr_reader :name

    @@all = []

    def initialize(name_string)
        @name = name_string

        @@all << self
    end

    def self.all
        @@all
    end

    def pass_student(student_instance, test_name)
        paper = BoatingTest.all.select{|id| id.student == student_instance && id.test == test_name}
        paper ? paper.status = 'passed' : Boating.new(student_instance, test_name, 'passed', self)
    end

    def fail_student(student_instance, test_name)
        paper = BoatingTest.all.select{|id| id.student == student_instance && id.test == test_name}
        paper ? paper.status = 'failed' : Boating.new(student_instance, test_name, 'failed', self)
    end

end
