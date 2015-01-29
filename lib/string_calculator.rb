module StringCalculator

  def self.add(string)
		string.gsub(/\n/,',').split(',').inject(0) {|sum, x| sum + x.to_i }
  end

end
