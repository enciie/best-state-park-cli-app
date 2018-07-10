class BestStatePark::Scrapper

  def self.scrape_page
    html = "https://www.travelandleisure.com/trip-ideas/national-parks/best-national-parks-by-state"
    doc = Nokogiri::HTML(open(html))

    doc.css(".media-body").each do |park|
      state_park = BestStatePark::Park.new
      state_park.name = park.css("h2").text.strip.split(', ').first
      state_park.state = park.css("h2").text.strip.split(', ').last
      state_park.description = park.css("p").text
        if state_park.description = ""
          state_park.description = park.css("div").text
        end

      state_park.save unless state_park.name == "Brown v. Board of Education" || state_park.state == nil
    end
  end

end
