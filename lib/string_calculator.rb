module StringCalculator

  def self.add(string)
  	if string[0..1] == '//'
  		delimiter = string[2]
  		string[4..-1].split(delimiter).inject(0) {|sum, x| sum + x.to_i }
  	else
			string.split(/[,\n]/).inject(0) {|sum, x| sum + x.to_i }
		end
  end

end
