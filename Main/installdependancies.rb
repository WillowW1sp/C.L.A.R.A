require "rbconfig"
include Config

case CONFIG["host_os"]
when /mswin|windows/i
# Windows

when /linux/i
# Linux
sudo apt-get install mpg123 #for debain based
when /sunos|solaris/i
# Solaris
else
# Whatever
end

# convert to this instead: https://github.com/djberg96/sys-uname/wiki

