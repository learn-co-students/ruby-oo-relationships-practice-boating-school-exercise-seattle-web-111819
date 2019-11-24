class BoatingTest
    @@all = []

    attr_reader :instructor, :test_name, :student
    attr_accessor :grade

    def initialize(instructor, student, test_name, grade="pending")
        @instructor = instructor
        @test_name = test_name
        @student = student
        @grade = grade
        @@all << self
    end

    def self.all
        @@all
    end

end
