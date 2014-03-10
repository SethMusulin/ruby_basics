require 'date'

birthday_file = File.new("/Users/sethmusulin/gSchoolWork/ruby_basics/bin/birthday_data.csv", "r")
lines = birthday_file.readlines
#headers = lines[0].split(',')
person_info={}

lines.each do |birthday_line|
  person =  birthday_line.chomp.split(',')
  person_info[person[1] + ' ' + person[0]] = person
end

puts "Who's Birthday do you want to know?"

birthday_name = gets.chomp
persons_bday = ""

person_info.each do |key, value|
  if key[birthday_name]
    persons_bday = value[2]
  end
end

persons_bday_date = Date.parse(persons_bday)
today_date = Date.today
year_diff = today_date.year - persons_bday_date.year

puts persons_bday_date.strftime("%B %-d, %Y") + ", #{year_diff} years old"