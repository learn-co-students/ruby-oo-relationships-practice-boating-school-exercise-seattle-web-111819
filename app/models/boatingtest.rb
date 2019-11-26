class BoatingTest
    attr_reader :student, :name, :instructor
    attr_accessor :test_status
    @@all = []
    def initialize(student, name, test_status, instructor)
        @student = student
        @name = name
        @test_status = test_status
        @instructor = instructor
        @@all << self
    end
    def self.all
        @@all
    end
end
