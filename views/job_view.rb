class JobView
  def greeting
    puts "Looking for an NYC government job (y/n)?"
  end

  def looking_for_job?
    gets.chomp
  end

  def list_agency(agency)
    puts "#{agency}"
  end

  def ask_for_agency
    puts "Input the agency you're interested in."
  end

  def ask_for_minimum_salary
    puts "What do you want in terms of annual pay?"
  end

  def agency_of_interest
    gets.chomp
  end

  def minimum_salary
    gets.chomp
  end

  def available_listings
    puts "Here are some available options:"
    puts "Location | Position | Credentials"
  end

  def list_option(location, position, credentials)
    puts "#{location} | #{position} | #{credentials}"
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
