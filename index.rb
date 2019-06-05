# encoding: utf-8

class Menu
  attr_accessor :name
  attr_accessor :price

  def info
    return "#{self.name} #{self.price}円"
  end

  # get_total_priceメソッドを定義してください
  def get_total_price(count)
    total_price = self.price * count
    if count >= 3
      total_price -= 100
    end
    return total_price
  end
end

menu1 = Menu.new
menu1.name = "ピザ"
menu1.price = 800

# menu1に対してget_total_priceメソッドを呼び出してください
puts menu1.get_total_price(3)
