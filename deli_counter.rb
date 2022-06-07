require 'pry'

def line deli_array
  if deli_array.length == 0  
    puts 'The line is currently empty.' 
  else 
    count = 0
    while count < deli_array.length
      deli_array[count] = "#{count + 1}. #{deli_array[count]}"
      count += 1
    end  
    puts "The line is currently: #{deli_array.join(' ')}"
  end
end

def take_a_number deli_array, new_name
  deli_array.push(new_name)
  puts "Welcome, #{new_name}. You are number #{deli_array.length} in line."
end  

def now_serving deli_array
  if deli_array.length == 0
    puts 'There is nobody waiting to be served!'
  else 
    puts "Currently serving #{deli_array.first}."
    deli_array.shift
  end    
end  
# binding.pry