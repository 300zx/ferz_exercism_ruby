class Hamming
  def self.compute(str_a, str_b)

    str_length = str_a.chars.length

    match = 0

    str_length.times do |index|
      match += 1 if str_a.chars.at(index) == str_b.chars.at(index)    
    end

    return str_length - match
  end
end


