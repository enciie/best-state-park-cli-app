class BestStatePark::Park
  attr_accessor :state, :park_name, :description

  @@all = []

  def initialize(state=nil, park_name=nil, description=nil)
    @state = state
    @park_name = park_name
    @decription = description
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_by_state(state)
    self.all.detect do |p|
      p.state.downcase == state.downcase.strip
    end
  end

end
