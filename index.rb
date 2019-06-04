# encoding: utf-8

# キーワード引数を使うように書き換えてください
def buy(item:, price:, count:)
  puts "#{item}を#{count}台のお買い上げです"
  puts "合計金額は#{price * count}円です"
end

# キーワード引数を使うように書き換えてください
buy(item: "テレビ", price: 15000, count: 2)
