25.times {
o = [('a'..'z'), ('A'..'Z')].map(&:to_a).flatten
string = (0...50).map { o[rand(o.length)] }.join
File.open("/etc/hosts", "a") {|f| f.puts string} 
File.open("append-job.log", "a") {|t| t.puts "'somedomain.com - #{string}' added at #{Time.new}"} }
