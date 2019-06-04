# encoding: utf-8

# shipping_free?メソッドを定義してください
def shipping_free?(price)
  return price >= 5000
end

# if文の条件式でshipping_free?メソッドを呼び出してください
if shipping_free?(3000)
  puts "5000円以上のお買い上げなので送料はいただきません"
else
  puts "追加で送料をいただきます"
end
