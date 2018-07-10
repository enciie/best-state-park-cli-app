class BestStatePark::Park
  attr_accessor :name , :state, :description

  @@all = []

  def initialize(name = nil, state = nil, description = nil)
    @name = name
    @state = state
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
