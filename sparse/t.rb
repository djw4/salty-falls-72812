require 'fileutils'
h = "/etc/hosts"
t = "hosts.tmp"
s = "ddd"

FileUtils.cp("#{h}", "#{t}")

File.open("#{t}", "w") do |out_file|
  File.foreach("#{h}") do |line|
    out_file.puts line unless line.include? "#{s}"
  end
end

FileUtils.cp("#{t}", "#{h}")
FileUtils.rm("#{t}")
