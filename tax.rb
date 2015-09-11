$free_tax_name = ["food", "medicine", "book"]
class Tax
	attr_accessor :number, :product_name, :price
	def initialize (number, product_name, price)
		@number = number
		@product_name = product_name
		@price = price
	end	
	def is_free_tax?
		$free_tax_name.each do |item|
			if @product_name.downcase.include? item
				return true			
			end
		end	
		false	
	end
	def is_import_tax?
		if @product_name.downcase.include? "import"
			return true
		end
		false
	end

	def calculate_tax
		tax_free = 0
		if is_free_tax? == false
			tax_free += 10		
		end
		if is_import_tax? == true
			tax_free += 5		
		end
		tax_free
	end
	def count_price
		my_price = (@price * @number * calculate_tax/100.0).round(3) + @price * @number	
	end	
	def to_s
		"Number: #{@number} Product_name: #{@product_name} Price: #{@price}"		
	end
end
array_tax = Array.new
goods = Tax.new(2, "import", 9)
array_tax << goods
goods = Tax.new(2,"food", 10)
array_tax << goods
goods = Tax.new(2, "candie", 11)
array_tax << goods
puts "======Goods are unverified tax====="
puts array_tax
def file_output(data)
	sum = 0
	write_file = File.new("Tax_output.txt", "w")
	if write_file
		data.each do |item|
			write_file.syswrite("Number: #{item.number} \t Product_name: #{item.product_name} \t price: #{item.count_price}\n")
			sum += item.count_price
		end
		write_file.syswrite("Total price all goods after tax: #{sum}$")
	else
		p "can't open file"
	end
end
file_output(array_tax)