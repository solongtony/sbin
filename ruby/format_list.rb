#!/usr/bin/env ruby

# Takes a list space or newline delimited  words, e.g. "a b c d" and outputs "('a', 'b', 'c', 'd')"
# Ideal for use in a SQL "in" clause.

# TODO: support command line options for these things.
QUOTE_CHARACTER = '' #'\''
DELIMITER = ', '
PARENS = true
OPEN_PAREN = '('
CLOSE__PAREN = ')'

if ARGV[0]
  tokens = ARGV[0].split
else
  # ARGF is the first file parameter, opened for reading,
  # or stdin if no file param is given.
  # Enter end-of-docuemnt (^d) twice when using stdin.
  tokens = ARGF.read.split
end

result = ''

result << OPEN_PAREN if PARENS

tokens.each do|token|
  result << "#{QUOTE_CHARACTER}#{token}#{QUOTE_CHARACTER}#{DELIMITER}"
end
result.chomp!(DELIMITER)

result << CLOSE__PAREN if PARENS

puts result
