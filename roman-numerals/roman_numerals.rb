public 

# Roman numerals key map
KEY = {
  1000 => "M",
  900  => "CM",
  500  => "D",
  400  => "CD",
  100  => "C",
  90   => "XC",
  50   => "L",
  40   => "XL",
  10   => "X",
  9    => "IX",
  5    => "V",
  4    => "IV",
  1    => "I"
}


def to_roman
  current_num = self 
  roman_str = '' 
  
  # quotient is used to keep track of how many times roman letter should be used 
  quotient = 0

  # modulus is used to reset current number for new iteration
  modulus = 0 

  # placeholder array for quotient and modulus; see divmod method
  qm_array = 0

  while current_num > 0
    KEY.each do |key, value|

      # check for greatest divisor
      if current_num / key > 0

        qm_array = current_num.divmod(key)     
        quotient = qm_array[0]
        modulus = qm_array[1]

        quotient.times do 
          roman_str.concat(value)
        end

      # reset current number for new iteration
      current_num = modulus
    end
  end
end
roman_str  
end
