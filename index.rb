# encoding: utf-8

puts "名前を入力してください"

# 入力を受け取って変数nameに代入してください
name = gets.chomp

# 「○○さん、いらっしゃいませ」となるように出力してください
puts "#{name}さん、いらっしゃいませ"

puts "1つ100円のお菓子があります"
puts "いくつ買いますか?"

# 入力を数値として受け取って変数countに代入してください
count = gets.chomp.to_i

# 変数total_priceに、100とcountを掛けた値を代入してください
total_price = 100 * count

# 「お会計は○○円です」となるように出力してください
puts "お会計は#{total_price}円です"
