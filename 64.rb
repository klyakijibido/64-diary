puts "привет, это дневник.
я сохраню все до строчки \"end\" в файл."
puts

current_path = File.dirname(__FILE__)

line = nil
all_lines = []

while line != "end" do 
	line = STDIN.gets.encode("UTF-8").chomp
	all_lines << line
end
# begin
# 	line = STDIN.gets.encode("UTF-8").chomp
# 	all_lines << line
# end until line == "end"


my_time = Time.now

file_name = my_time.strftime("%Y-%m-%d")

time_string = my_time.strftime("%H:%M")

separator = "----------------------------------------------------------"
	
my_file = File.new(current_path + "/" + file_name + ".txt", "a:UTF-8")

my_file.print("\n\r" + time_string + "\n\r")

all_lines.pop

for item in all_lines do
	my_file.puts(item)	
end

my_file.puts(separator)

my_file.close

puts "ваша запись сохранена в файл #{file_name}.txt"

