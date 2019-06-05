# encoding: utf-8

class Menu
  attr_accessor :name
  attr_accessor :price

  # initializeメソッドを書き換えてください
  def initialize(name:, price:)
    self.name = name
    self.price = price
  end

  def info
    return "#{self.name} #{self.price}円"
  end

  def get_total_price(count)
    total_price = self.price * count
    if count >= 3
      total_price -= 100
    end
    return total_price
  end
end

# 引数を渡してインスタンスを生成してください
menu1 = Menu.new(name: "すし", price: 1000)

puts menu1.info
