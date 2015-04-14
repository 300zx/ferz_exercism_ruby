class Robot
  #attr_accessor :name

  def self.initialize(name)
    @name = name 
  end

  def name
    # random name generated with 2 letter prefix and 3 integers
    (0...2).map { (65 + rand(26)).chr }.join.concat(
    (0...3).map { rand(9) }.join)
  end

end

#50.times do p Robot.new.name end