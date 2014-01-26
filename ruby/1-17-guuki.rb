#!/usr/bin/ruby
def odd?(n)
  case n % 2
  when 0 then false
  when 1 then true
  else raise "eror"
  end
end

while num = gets
  unless /\A-?\d+\Z/ =~ num
    $stderr.puts "write seisuu"
    next
  end
  num = num.to_i
  if odd?(num)
    puts "#{num} is kisuu"
  else
    outs "#{num} is guusuu"
  end
end
