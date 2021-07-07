class Instructor
    attr_reader :name

    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    def self.all
        @@all
       
    end
    def pass_student(student, test_name)
        pass = BoatingTest.all.find {|bts| bts.student == student && bts.name == test_name}
        if pass 
            pass.test_status = "passed"
        else
            BoatingTest.new(student, test_name, "passed", self)
        end
        
        # binding.pry
    end

    def fail_student(student, test_name)
        pass = BoatingTest.all.find {|bts| bts.student == student && bts.name == test_name}
        if pass 
            pass.test_status = "failed"
        else
            BoatingTest.new(student, test_name, "failed", self)
        end
        
    end

    # binding.pry
end
