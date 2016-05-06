puts "enter array"

a = gets.strip
arr = a.split(' ').map(&:to_i)
@arrnew = []
arr.reverse_each do |i|
  	@arrnew.push(i)
end
puts @arrnew.join(" ").to_s
