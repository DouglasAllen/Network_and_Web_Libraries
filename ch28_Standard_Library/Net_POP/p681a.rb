# Sample code from Programing Ruby, page 681
require 'net/pop'
pop = Net::POP3.new('gmail.com')
pop.start('kb9agt', '') do |server|
  msg = server.mails[0]

  # Print the 'From:' header line
  from = msg.header.split("\r\n").grep(/^From: /)[0]
  puts from
  puts
  puts "Full message:"
  text = msg.pop
  puts text
end
