
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






# cart_price = cart.map { |item, quantity| [item] * quantity }.sum
# puts "=" * 30
# cart.each do |item, quantity|
#   # final_variable = store.map { |item, price| store[item]}
#   puts "#{item}: #{quantity} x $#{bakery[item]}".center(30)

# end
# # 3. Display the amount for each item before the total
# puts "Total: $#{cart_price}".center(30)
# until !combination.empty || > qty


# def dispatch_line_item_qty
#     num_of_packs = 1
#     combination = []
#     # until a combination matches @qty or that the num of packs is greater than quantity, we keep looking for a combination
#     until !combination.empty? || num_of_packs > qty
#       combination = find_combination_matching_qty
#       num_of_packs += 1
#     end
#     num_of_packs > qty ? unvalid_qty_error : detail = detail_line_item
#   end


#    def detail_line_item
#     @combination.first.group_by(&:itself).map { |k, v| "#{v.size} x #{k} $#{@product.packs[k]}" }
#   end


# def find_combination_matching_qty
#     @product.packs_qty?.repeated_combination(@num_of_packs).filter { |num| num.sum == @qty }
#   end
