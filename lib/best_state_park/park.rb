class BestStatePark::Park
  attr_accessor :state, :park_name, :description

  def self.all

    park_1 = self.new
    park_1.state = "Alabama"
    park_1.park_name = "national park 1"
    park_1.description = "info about the national park 1"

    park_2 = self.new
    park_2.state = "Alaska"
    park_2.park_name = "national park 2"
    park_2.description = "info about the national park 2"

    park_3 = self.new
    park_3.state = "Arizona"
    park_3.park_name = "national park 3"
    park_3.description = "info about the national park 3"


    [park_1, park_2, park_3]
  end

  def self.scrape_page
    html = "https://www.travelandleisure.com/trip-ideas/national-parks/best-national-parks-by-state"
    doc = Nokogiri::HTML(open(html))
  end

end
