class BoatingTest
    attr_reader :student, :test_name, :test_status, :instructor
    @@all = []

    def initialize(student_obj, test_name_str, test_status_str, instructor_obj)
        @student = student_obj
        @test_name = test_name_str
        @test_status = test_status_str
        @instructor = instructor_obj
        @@all << self
    end

    def self.all
        @@all
    end


end
