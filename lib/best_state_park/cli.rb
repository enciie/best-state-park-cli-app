class BestStatePark::CLI

  def call
    greeting
    start
    goodbye
  end

  def greeting
    BestStatePark::Park.scrape_page
    puts "************************************************************"
    puts "*                                                          *"
    puts "*          WELCOME TO THE BEST NATIONAL PARKS CLI          *"
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
      goodbye
    else
      puts ""
      puts "        .......Please enter a valid reponse.......       "
      puts ""
      start
    end
  end

  def list_states
    puts ""
    puts "------------------------------------------------------------"
    @parks = BestStatePark::Park.all
    @parks.each.with_index(1) do |park, i|
      puts "#{i}-#{park.state}"
    end
    puts "------------------------------------------------------------"
  end

  def menu
    input = nil
    while input != "exit"
      puts ""
      puts "          Which State would you like to explore?          "
      puts "                Enter a valid number 1-50                 "
      puts "                Or enter list to view list                "
      puts "                   Or enter exit to end                   "
      puts ""
      input = gets.strip.downcase

      if input.to_i > 0
        park = @parks[input.to_i-1]
        print_park(park)
      elsif input == "list"
        list_states
      else
        puts "        .......Please enter a valid reponse.......        "
      end
    end
  end

  def print_park(park)
    puts ""
    puts "NATIONAL PARK:"
    puts "--------------"
    puts "#{park.park_name}, #{park.state}"
    puts ""
    puts "DESCRIPTION:"
    puts "------------"
    puts "#{park.description}"
    puts ""
  end

  def goodbye
    puts ""
    puts "            GO OUT AND ENJOY THE GREAT OUTDOORS!          "
    puts "                     HAVE A GREAT DAY!                    "
    puts ""
  end

end
