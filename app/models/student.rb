class Student
    attr_reader :first_name

    @@all = []
    def initialize(first_name)
        @first_name = first_name
        
        @@all << self
    end

    def add_boating_test(test_name, test_status, instructor)
        BoatingTest.new(self, test_name, test_status, instructor)
    end

    def self.all
        @@all
    end

    def self.find_student(first_name)
        self.all.find {|stud| stud.first_name == first_name}
    end

    def grade_percentage
        pass = 0
        arr = BoatingTest.all.select {|test| test.student == self}
        arr.each do |test|
            if test.test_status == 'passed'
                pass += 1
            end
        end

        (pass/arr.length).to_f
    end
end
