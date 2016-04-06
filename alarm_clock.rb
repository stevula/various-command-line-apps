puts "In how many seconds should the alarm sound?"
seconds = gets.chomp.to_i

sleep(seconds)

10.times do 
  # Mac OS only
  print "\a"
  sleep(1)
end