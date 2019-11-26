require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
i1 = Instructor.new("sean")
i2 = Instructor.new("cole")
i3 = Instructor.new("amy")

s1 = Student.new("Alice")
s2 = Student.new("Josh")
s3 = Student.new("Tanner")

bt1 = BoatingTest.new(s1, "sailing", "passed", i1)
bt2 = BoatingTest.new(s2, "speed", "failed", i2)
bt3 = BoatingTest.new(s3, "sailing", "pending", i3)
bt4 = BoatingTest.new(s1, "speed", "pending", i1)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line

