module StringCalculator

  def self.add(string)
  	delimiter, string = extract_delimiter(string)

  	numbers = string.split(delimiter).map(&:to_i)
  	negatives = numbers.select {|x| x< 0 }
  	unless negatives.empty?
			# check out difference b/w size, length and count
  		if negatives.length == 1
		  	raise "Cannot handle negative numbers."
		  else
		  	raise "Cannot handle negative numbers [#{negatives.join(",")}]."
		  end
  	end
  	# use detect (stops when it finds just one) versus select (looks for all)
	  	
	  	numbers.inject(0) {|sum, x| sum + x.to_i}
  end

  def self.extract_delimiter(string)
  	delimiter = /[,\n]/
  	if string =~ /^\/\//
  		delimiter = string[2]
  		string = string[4..-1]
  	end
		[delimiter, string]
  end

end
