# encoding: utf-8

# 引数priceも受け取るように変更してください
def print_info(item, price)
  puts "わんこでんきへようこそ！"
  puts "今日は#{item}がセール中で#{price}円です！"
end

# print_infoメソッドを呼び出してください
print_info("SDカード", 1200)
