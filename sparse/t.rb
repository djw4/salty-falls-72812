require 'fileutils'
h = "/etc/hosts"
t = "hosts.tmp"
time = Time.now.to_i

FileUtils.cp("#{h}", "#{t}")

File.open("#{t}", "w") do |out_file|
  File.foreach("#{h}") do |line|
    out_file.puts line unless line.include? "#{time}"
  end
end

FileUtils.cp("#{t}", "#{h}")
FileUtils.rm("#{t}")
