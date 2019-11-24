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

    def find_student_test(student, test_name)
        BoatingTest.all.find {|bt| bt.student = student && bt.test_name == test_name}
    end

    def pass_student(student, test_name)
        self.find_student_test(student, test_name).grade = "passing"
    end

    def fail(student, test_name)
        self.find_student_test(student, test_name).grade = "failing"
    end

end