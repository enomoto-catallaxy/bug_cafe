# frozen_string_literal: true

DRINKS = [
  { name: 'コーヒー', price: '300' },
  { name: 'カフェラテ', price: '400' },
  { name: 'チャイ', price: '460' },
  { name: 'エスプレッソ', price: '340' },
  { name: '緑茶', price: '450' }
].freeze

FOODS = [
  { name: 'チーズケーキ', price: '470' },
  { name: 'アップルパイ', price: '520' },
  { name: 'ホットサンド', price: '410' }
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

puts 'bugカフェへようこそ！ご注文は？ 番号でどうぞ'
DRINKS.each.with_index(1) do |menu, i|
  puts "(#{i})#{menu[:name]}: #{menu[:price]}円"
end
print '>'
order_number = gets.to_i
order_number = order_number - 1
order_drink = order_number
puts "#{DRINKS[order_number][:name]}(#{DRINKS[order_number][:price]}円)ですね。"

puts 'フードメニューはいかがですか?'
FOODS.each.with_index(1) do |menu, i|
  puts "(#{i})#{menu[:name]}: #{menu[:price]}円"
end
print '>'
order_number = gets.to_i
order_number = order_number - 1
order_food = order_number
puts "#{FOODS[order_number][:name]}(#{FOODS[order_number][:price]}円)ですね。"

total = DRINKS[order_drink][:price].to_i + FOODS[order_food][:price].to_i
puts "お会計は#{total}円になります。ありがとうございました！"
