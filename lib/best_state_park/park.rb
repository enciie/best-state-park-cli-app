class BestStatePark::Park
  attr_accessor :state, :park_name, :description

  @@all = []

  def initialize(state = nil, park_name = nil, description = nil)
    @state = state
    @park_name = park_name
    @description = description
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_by_state(state)
    self.all.detect do |park|
      park.state.downcase == state.downcase.strip
    end
  end

end
