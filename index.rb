# encoding: utf-8

class Menu
  attr_accessor :name
  attr_accessor :price
end

menu1 = Menu.new

menu1.name = "ピザ"
puts menu1.name

# menu1のpriceに「800」を代入してください
menu1.price = 800

# menu1のpriceを出力してください
puts menu1.price
