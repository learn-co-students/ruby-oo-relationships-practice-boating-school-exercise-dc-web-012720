class Student

    attr_reader :first_name

    @@all = []

    def initialize(first_name_string)
        @first_name = first_name_string

        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_student(first_name_string)
        @@all.select{|student| student.first_name == first_name_string}
    end



    #! Above is self methods
    #//                     
    #! Below is relationship methods

    def add_boating_test(test_name_string, test_status_string, instructor_instance )
        BoatingTest.new(self, test_name_string, test_status_string, instructor_instance)
    end

    def grade_percentage
        arr = BoatingTest.all.select{|test| test.student}.map{|student| student.status}
        ans = arr.sum / arr.size
        ans
    end








end
