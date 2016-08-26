# exercises from day 2

# file with code block
File.open('day1.rb', 'r') do |f|
  puts f.gets
end
# when using a code block, Ruby automatically closes the file for you at the end of the block. no f.close needed!

# file without code block
fileObj = File.open('day2.rb', 'r')
puts fileObj.gets
fileObj.close  # without the code block, we have to explicitly close the file when we're done

# hashes and arrays
x = {"a" => 1, "b" => 2}
puts x
y = x.to_a
puts y
y.each do |v|
  v[1] *= 42
end
z = Hash[y]  # convert back to hash map
puts z

numbers = 1..16
# numbers in groups of 4, with "each"
i = 0
tmp = []
numbers.each do |n|
  tmp.push(n)
  i += 1
  if i % 4 == 0
    puts tmp.join(' ')
    tmp = []
  end
end
# numbers in groups of 4, with "each_slice"
numbers.each_slice(4) do |n|
  puts n.join(' ')
end


