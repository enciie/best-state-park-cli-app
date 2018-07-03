class BestStatePark::Scrapper

  def self.scrape_page
    html = "https://www.travelandleisure.com/trip-ideas/national-parks/best-national-parks-by-state"
    doc = Nokogiri::HTML(open(html))
    doc.css(".media-body").each do |park|
      state_park = BestStatePark::Park.new
      state_park.description = park.css("p").text

      location_arr = park.css("h2").text.strip.split(', ')
      state_park.state = location_arr[1]
      state_park.park_name = location_arr[0]

      state_park.save unless state_park.park_name == "Brown v. Board of Education" || state_park.state == nil
    end
  end

end
