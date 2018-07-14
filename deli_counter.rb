katz_deli = []

def line(katz_deli) # If there is no one in line, this will call out that no one is in line.
  if katz_deli.empty?
    puts "The line is currently empty."
  
  elsif katz_deli != [] # This will display the current line and work with a variety of different people 
    current_line = "The line is currently:"
    katz_deli.each.with_index(1) do |person, index|
      current_line << " #{index}. #{person}"
    end 
    puts current_line
  end 
end 

def take_a_number(katz_deli, person) # This will let people take a number and call out where they are in line. 
  katz_deli << person
  puts "Welcome, #{person}. You are number #{katz_deli.length} in line."
end 

def now_serving(katz_deli) # This will call the individual person who is being served and take them off the line
  if katz_deli.empty?
    puts "There is nobody waiting to be served!" # It will also call if no one is being served.
    
  else 
    puts "Currently serving #{katz_deli.first}."
    katz_deli.shift
  end 
end 

