class Gigasecond
  def self.from(time)
    Time.at(time + 1e9)     
  end
end
