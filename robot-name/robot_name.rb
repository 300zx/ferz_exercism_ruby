class Robot
  attr_accessor :name
    
  def initialize
    @name = name_generator
  end

  def name_generator
    # random name generated with 2 letter prefix and 3 integers
    #(0...2).map { (65 + rand(26)).chr }.join.concat(
    #(0...3).map { rand(9) }.join)
    (('A'..'Z').to_a.shuffle[0...2].join + (0..9).to_a.shuffle[0...3].join).to_s
  end

  def reset
    self.name = name_generator
  end

end
