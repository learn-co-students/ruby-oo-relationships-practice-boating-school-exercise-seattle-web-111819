class Student
    @@all = []

    attr_reader :first_name

    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_boating_test(instructor, test_name)
        BoatingTest.new(instructor, self, test_name)
    end

    def self.find_student(name)
        @@all.find {|student| student.first_name == name}
    end

    def boating_tests
        BoatingTest.all.select {|bt| bt.student == self}
    end

    def grade_percentage
        self.boating_tests.select {|bt| bt.grade == "passing"}.count.to_f / self.boating_tests.count * 100
    end

end
