class BestStatePark::CLI

  def call
    greeting
    start
  end

  def greeting
    BestStatePark::Scraper.scrape_page
    puts "************************************************************"
    puts "*                                                          *"
    puts "*          WELCOME TO THE BEST NATIONAL PARKS CLI          *"
    puts "*                                                          *"
    puts "*             This app allows you to explore               *"
    puts "*             the best National park per state             *"
    puts "*                                                          *"
    puts "************************************************************"
    puts ""
  end

  def start
    puts ""
    puts "            Are you ready to go on an adventure?            "
    puts "                    Please enter Y or N:                    "
    puts ""

    input = gets.strip.downcase

    if input == "y"
      list_states
      menu
    elsif input == "n"
      puts ""
      puts "           Let's go on an adventure next time!           "
      puts ""
    else
      invalid
      start
    end
  end

  def list_states
    puts ""
    puts "------------------------------------------------------------"

    @parks = BestStatePark::Park.all
    @parks.each.with_index(1) do |park, i|
      puts "#{i} - #{park.state}"
    end

    puts "------------------------------------------------------------"
  end

  def list_parks
    puts ""
    puts "------------------------------------------------------------"

    @parks = BestStatePark::Park.all
    @parks.each.with_index(1) do |park, i|
      puts "#{i} - #{park.name}"
    end

    puts "------------------------------------------------------------"
  end

  def menu
    input = nil
    while input != "exit"

      puts ""
      puts "          Which State would you like to explore?          "
      puts "         Enter a valid number 1-50 or State Name:         "
      puts "              Or enter 'list' to view list                "
      puts "                 Or enter 'exit' to end                   "
      puts ""

      input = gets.strip.downcase

      if input == "list"
        list_states
      elsif input == "list parks"
        list_parks
      elsif input == "exit"
        goodbye
      elsif input.to_i == 0
        if park = BestStatePark::Park.find_by_state(input)
          print_park(park)
        elsif park = BestStatePark::Park.find_by_park(input)
          print_park(park)
        else
          invalid
        end
      elsif input.to_i.between?(1, @parks.size)
        if park = BestStatePark::Park.find_by_number(input)
          print_park(park)
        end
      else
        invalid
      end
    end
  end

  def print_park(park)
    puts ""
    puts "[ NATIONAL PARK ]"
    puts "#{park.name}, #{park.state}"
    puts ""
    puts ""
    puts "[ DESCRIPTION ]"
    puts "#{park.description}"
    puts ""
  end

  def invalid
    puts ""
    puts "    ...........PLEASE ENTER A VALID RESPONSE...........    "
    puts ""
  end

  def goodbye
    puts ""
    puts "            GO OUT AND ENJOY THE GREAT OUTDOORS!          "
    puts "                     HAVE A GREAT DAY!                    "
    puts ""
  end

end
