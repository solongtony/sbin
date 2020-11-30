#!/usr/bin/env ruby

# Create MAC address formatted string:
#   xx:xx:xx:xx:xx:xx
# where each x is a hexidecimal digit.

# TODO: optionally take a seed value.
# The seed could come from hashing the date and network interface,
# then each interface would get a consistent value for a day.

require 'securerandom'

raw_mac = SecureRandom.hex(6)

formatted_mac = raw_mac.chars.each_with_index.map do |c, i|
  # Add ":" after each two characters.
  i % 2 == 0 ? c : c + ':'
end.join.chomp(":")

puts formatted_mac
