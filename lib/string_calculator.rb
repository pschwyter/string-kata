module StringCalculator

  def self.add(string)
  	delimiter = /[,\n]/
  	if string =~ /^\/\//
  		delimiter = string[2]
  		string = string[4..-1]
  	end
		string.split(delimiter).inject(0) {|sum, x| sum + x.to_i }
  end

end
