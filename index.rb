# encoding: utf-8

def discount(price)
  # 「price / 2」を戻り値として返してください
  return price / 2
end

puts "テレビがセール中です！"

# discountメソッドの戻り値を変数half_priceに代入してください
half_price = discount(15000)

# 「特別価格で〇〇円です」となるように出力してください
puts "特別価格で#{half_price}円です"
