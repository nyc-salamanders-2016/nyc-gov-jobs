require_relative '../tools/nyc_gov_job_parser'

class JobView
  def greeting
    puts "Looking for an NYC government job (y/n)?"
  end

  def looking_for_job?
    gets.chomp
  end

  def here_are_the_agencies
    puts ""
    puts "Here are all of the agencies hiring:"
    puts ""
  end

  def list_agency(agency)
    puts "#{agency}"
  end

  def ask_for_agency
    puts ""
    puts "Input the agency you're interested in."
  end

  def agency_of_interest
    gets.chomp
  end

  def ask_for_minimum_salary
    puts "What do you want in terms of annual pay?"
  end

  def minimum_salary
    gets.chomp
  end

  def available_listings
    puts "Here are some available options:"
    puts "Location | Position | Credentials"
  end

  def list_option(location, position, credentials, description, salary)
    puts "-------------------------------"
    puts "Position"
    puts "#{position}\n\n"

    puts "Salary"
    puts "#{salary}\n\n\n"

    puts "Credentials"
    puts "#{credentials}\n\n\n"

    puts "Description"
    puts "#{description}\n"
    puts "-------------------------------"
    puts "\n"
    puts "\n"
    puts "\n"
    puts "\n"
  end

  def anything_of_interest?
    puts "Do any of these interest you (y/n)?"
  end

  def interested?
    gets.chomp
  end

  def listing_info_available
    puts "Here's the info to apply. Best of luck to you!"
  end
end
