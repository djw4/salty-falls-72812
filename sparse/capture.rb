require 'webshot'

ws = Webshot::Screenshot.instance

# Ask user for input
puts "Enter website"
url = gets.chomp
filename = url.gsub(/https:\/\//, '')
filename = filename.gsub(/$/, '.png')

# cap
ws.capture url, filename, width: 1025, height: 1055, quality: 90
