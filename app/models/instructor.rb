class Instructor
    @@all = []

    attr_reader :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def grade_student(student, test_name, new_grade)
        match = BoatingTest.all.find {|bt| bt.student == student && bt.test_name == test_name}
        match ? match.grade = new_grade : BoatingTest.new(self, student, test_name, new_grade)
    end

    def pass_student(student, test_name)
        grade_student(student, test_name, "passing")
    end

    def fail_student(student, test_name)
        grade_student(student, test_name, "failing")
    end

end