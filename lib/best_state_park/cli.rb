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
    puts <<-DOC
    1-Alabama 2-Alaska 3-Arizona 4-Arkansas 5-California
    6-Colorado 7-Connecticut 8-Delaware 9-Florida 10-Georgia
    11-Hawaii 12-Idaho 13-Illinois 14-Indiana 15-Iowa
    16-Kansas 17-Kentucky 18-Louisiana 19-Maine 20-Maryland
    21-Massachusetts 22-Michigan 23-Minnesota 24-Mississippi 25-Missouri
    1-Alabama 2-Alaska 3-Arizona 4-Arkansas 5-California
    6-Colorado 7-Connecticut 8-Delaware 9-Florida 10-Georgia
    11-Hawaii 12-Idaho 13-Illinois 14-Indiana 15-Iowa
    16-Kansas 17-Kentucky 18-Louisiana 19-Maine 20-Maryland
    21-Massachusetts 22-Michigan 23-Minnesota 24-Mississippi 25-Missouri
    DOC
  end

  def menu
    input = nil
    while input != "exit"
      puts ""
      puts "Please enter a number to explore, list to view list, or exit to end:"
      puts ""
      input = gets.strip.downcase
      case input
      when "1"
        puts "more info on Alabama......................................"
      when "2"
        puts "more info on Alaska......................................."
      when "list"
        list_states
      else
        puts "        .......Please enter a valid reponse.......        "
      end
    end
  end

  def goodbye
    puts ""
    puts "            GO OUT AND ENJOY THE GREAT OUTDOORS!          "
    puts "                     HAVE A GREAT DAY!                    "
    puts ""
  end

end
