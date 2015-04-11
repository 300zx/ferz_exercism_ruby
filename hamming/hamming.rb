class Hamming
  def self.compute(str_a, str_b)

    str_length = str_a.chars.length

    index = 0
    match = 0

    str_length.times do
      if str_a.chars.at(index) == str_b.chars.at(index)
        match += 1
      end
      index += 1
    end

    return str_length - match
  end
end


