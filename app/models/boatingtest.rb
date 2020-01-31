class BoatingTest

    attr_accessor :status, :test
    attr_reader :student, :instructor

    @@all = []
    def initialize(student_instance, test_string, status_string, instructor_instance)
        @student = student_instance
        @test = test_string
        @status = status_string
        @instructor = instructor_instance

        @@all << self
    end

    def self.all
        @@all
    end

end
