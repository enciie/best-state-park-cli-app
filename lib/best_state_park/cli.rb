class BestStatePark::CLI

  def call
    greeting
    start
  end

  def greeting
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
    puts "              Please enter a number to explore:             "
  end


  def goodbye
    puts ""
    puts "            GO OUT AND ENJOY THE GREAT OUTDOORS!          "
    puts "                     HAVE A GREAT DAY!                    "
    puts ""
  end


end
