class BestStatePark::Park
  attr_accessor :state, :park_name, :description

  def self.all
    puts <<-DOC
    1-Alabama 2-Alaska 3-Arizona 4-Arkansas 5-California
    6-Colorado 7-Connecticut 8-Delaware 9-Florida 10-Georgia
    11-Hawaii 12-Idaho 13-Illinois 14-Indiana 15-Iowa
    16-Kansas 17-Kentucky 18-Louisiana 19-Maine 20-Maryland
    21-Massachusetts 22-Michigan 23-Minnesota 24-Mississippi 25-Missouri
    DOC
    park_1 = self.new
    park_1.state = "Alabama"
    park_1.park_name = "national park 1"
    park_1.description = "info about the national park 1"

    park_2 = self.new
    park_2.state = "Alaska"
    park_2.park_name = "national park 2"
    park_2.description = "info about the national park 2"

    [park_1, park_2]
  end

end
