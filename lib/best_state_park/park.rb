class BestStatePark::Park
  attr_accessor :state, :park_name, :description

  @@all = []

  def self.all
    @@all
  end

  def save
    @@all << self
  end

end
