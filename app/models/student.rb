class Student
    attr_reader :name

    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    def self.all 
        @@all
    end
    def add_boating_test(name, test_status, instructor)
        BoatingTest.new(self, name, test_status, instructor)
        # binding.pry
    end
    
    def self.find_student(sname)
        @@all.select{|student| student.name == sname}
        binding.pry
    end
    def grade_percentage
        #look at tests passed
        #return percentage of all tests passed
        passed = BoatingTest.all.select {|bts| bts.test_status == "passed"}
        tests = BoatingTest.all.select {|bts| bts.name}
        test = (passed.length).to_f/(name.length).to_f
        test*100
        binding.pry
    end

end
