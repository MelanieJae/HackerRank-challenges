public
# Explanation

# N=3N=3
# We add the NN subsequent (Key,Value) pairs to our map so it looks like this:

# phoneBook={(sam,99912222),(tom,11122222),(harry,12299933)}phoneBook={(sam,99912222),(tom,11122222),(harry,12299933)}
# We then process each query and print 𝙺𝚎𝚢=𝚅𝚊𝚕𝚞𝚎Key=Value if the queried Key is found in the map, or 𝙽𝚘𝚝 𝚏𝚘𝚞𝚗𝚍Not found otherwise.

# Query 0: 𝚜𝚊𝚖sam 
# Sam is one of the keys in our dictionary, so we print 𝚜𝚊𝚖=𝟿𝟿𝟿𝟷𝟸𝟸𝟸𝟸sam=99912222.

# Query 1: 𝚎𝚍𝚠𝚊𝚛𝚍edward 
# Edward is not one of the keys in our dictionary, so we print 𝙽𝚘𝚝 𝚏𝚘𝚞𝚗𝚍Not found.

# Query 2: 𝚑𝚊𝚛𝚛𝚢harry 
# Harry is one of the keys in our dictionary, so we print 𝚑𝚊𝚛𝚛𝚢=𝟷𝟸𝟸𝟿𝟿𝟿𝟹𝟹harry=12299933.
# --------------
# in

# 3 —> num of entries in the phone book
# sam 99912222 ——> 
# ...
# sam —> query: name to look up, continue reading query
# lines until there are no more

# output
# Not found ——> if you read the query lines and there’s no matching name and number(this will be the output for the query for the name Edward)
 
# or 

# name and number line of the array if it matches the name in the query
# e.g. sam=99912222

# 3
# sam 99912222
# tom 11122222
# harry 12299933
# sam
# edward
# harry

# Sample Output

# sam=99912222
# Not found
# harry=12299933


# phoneBook = {}

puts "enter string"
kvpair = gets.chomp

def pair_create(pair)
  key = p[0]
  value = p[1]
  puts key, value 
  return pair
end
# end
# value = phoneBook[key]
# puts phoneBook



# query = gets.strip  
# value = phoneBook[query]
# if !value
#   puts "Not Found"
# else
#   puts "#{key}=" + "#{value}"  
# end

output = pair_create(kvpair)
puts output.to_s

