log = File.open("excerise_log.txt","a+")
info = log.readlines

i = 0 
while i < info.length
	info[i] = info[i].split(",")
	i+=1
end

i = 0
sum = 0
while i < info.length
	sum = info[i][0].to_f + sum
	i+=1
end

i = 0
sum1 = 0
while i < info.length
	sum1 = info[i][1].to_f + sum1
	i+=1
end
 
puts "How much did you run today in miles?"
distance = gets.to_f

puts "How long did it take for you to run today in minutes?"
time = gets.to_f

log.write(distance.to_s + ", " + time.to_s + "\n")


total = sum + distance
total1 = sum1 + time
pace = total/total1
puts "The total distance you have ran " + total.to_s + " miles"
puts "The total time you have ran is " + total1.to_s + " minutes"
puts "Your average miles per min is " + pace.to_s
log.close
