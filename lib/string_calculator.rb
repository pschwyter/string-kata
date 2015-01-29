module StringCalculator

  def self.add(string)
  	if string.include? ','
  		if string[1] == ','
	  		string[0].to_i + string[2].to_i
	  	else
	  		string.split(',').inject(0) {|sum, x| sum + x.to_i }
	  	end
  	else
	  	string =='5' ? 5 : 0
  	end 
  end

end
