
bakery = [{
   VS5: {
    "3": 6.99,
    "5": 8.99
  }}, {
  B11: {
    "2": 9.95,
    "5": 16.95,
    "8": 24.95
  }}, {
  CF: {
    "3": 5.95,
    "5": 9.95,
    "9": 16.99
  }}
]

cart = {}

puts "Welcome to the Bakery!"
loop do
  puts "What would you like to buy? Hit 'c' to checkout"
  bakery.each do |item|
    item.each do |k, v|
      puts k
    end
  end
  selection = gets.chomp.to_sym
  break if selection == :c

  bakery.each do |item|
    if item.keys.include?(selection)
      puts "How many do you want to buy? We sell in packs of:"
      item.each do |k, v|
        v.each do |qty, price|
          puts "#{qty} for $#{price}"
        end
      end
      amount = gets.chomp.to_i

      cart[selection] = amount
      puts "Added to your cart!"
    end
  end
end


puts "Your order:"
cart.each do |i, qty|
  puts "#{i} x #{qty}"

end

puts "=" * 30
puts "See you next time!"


