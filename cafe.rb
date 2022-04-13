# frozen_string_lit', price: '300' },

DRINKS = [
  { name: 'coffee', price: '400' },
  { name: 'cafelatte', price: '460' },
  { name: 'chai', price: '340' },
  { name: 'espresso', price: '340' },
  { name: 'tea', price: '450' }
].freeze

FOODS = [
  { name: 'cheesecake', price: '470' },
  { name: 'applepie', price: '520' },
  { name: 'hotsand', price: '410' }
].freeze

def take_order(menus)
  menus.each.with_index(1) do |menu, i|
    puts "(#{i})#{menu[:name]}: #{menu[:price]}円"
  end
  print '>'

  order_number = gets.to_i
  order_number = order_number - 1
  puts "#{menus[order_number][:name]}(#{menus[order_number][:price]}円)ですね。"
end

puts 'welcome to BugCafe! May help you? Please tell me the number'
DRINKS.each.with_index(1) do |menu, i|
  puts "(#{i})#{menu[:name]}: #{menu[:price]}円"
end
print '>'
order_number = gets.to_i
order_number = order_number - 1
order1 = order_number
puts "#{DRINKS[order_number][:name]}(#{DRINKS[order_number][:price]}円)ですね。"

puts 'How about foods?'
FOODS.each.with_index(1) do |menu, i|
  puts "(#{i})#{menu[:name]}: #{menu[:price]}円"
end
print '>'
order_number = gets.to_i
order_number = order_number - 1
order2 = order_number
puts "#{FOODS[order_number][:name]}(#{FOODS[order_number][:price]}円)ですね。"

total = DRINKS[order1][:price].to_i + FOODS[order2][:price].to_i
puts "It's#{total}yen! Thanks!"
