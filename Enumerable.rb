# class Human
# 	def initialize (name, age, gender)
# 		@name = name
# 		@age = age
# 		@gender = gender		
# 	end	
# 	# def name name
# 	# 	@name = name
# 	# end
# 	# def age age
# 	# 	if 
# 	# end

# 	def gender
# 		if @gender.upcase! == "MALE"
# 			puts "#{@name}, #{@age}, #{@gender}"
# 		end

# 	end
# 	def output
# 		puts "#{@name}, #{@age}, #{@gender}"
# 	end
# end
# # data = Array.new
# cus = Human.new("tin",20,"fmale")
# # cus < data
# cus.gender



# class Human
# 	attr_accessor:name, :age, :gender
# 	def initialize args
# 		args.each do |k,v|
# 			instance_variable_set("@#{k}", v) unless v.nil?
# 			end	
# 	end

# end

# def check_gender ()








# hash_Human = Hash.new()
# e1 = Human.new :name => "tin", :age => 24
# hash_human << e1
# e1 = Human.new :name => "tiin", :age => 24
# hash_human << e1
# puts hash_Human.each{|k,v| }



class Human
	attr_accessor :name, :age, :gender
	def initialize (name, age, gender)
		@name = name
		@age = age
		@gender = gender
	end	
	def to_s
		"Name: #{@name}, Age: #{@age}, Gender: #{@gender}"
	end
end

def filter_gender (array_human, genders)
	array_human.select { |human| human.gender.upcase.eql? genders }
end
def filter_age (array_human)	
		array_human.select {|human| human.age >= 18}	
end
def filter_age1 (array_human)
	array_human.select {|human| human.age < 18}
end
array_human = Array.new
human = Human.new("Ti", 15, "Male")
array_human << human
human = Human.new("Tin", 20, "Female")
array_human << human
human = Human.new("Tinh", 22, "Female")
array_human << human


array_gender = filter_gender(array_human, "FEMALE")
array_gender1 = filter_gender(array_human, "MALE")
array_age = filter_age array_gender
array_age1 = filter_age array_gender1
puts "*************Age >= 18 :************ "

puts array_age
puts array_age1

array_gender2 = filter_gender(array_human, "FEMALE")
array_gender3 = filter_gender(array_human, "MALE")
array_age2 = filter_age1 array_gender2
array_age3 = filter_age1 array_gender3
puts "*************Age < 18 :************"

puts array_age2
puts array_age3
