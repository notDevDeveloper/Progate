# encoding: utf-8

require "./menu"

menu1 = Menu.new(name: "ピザ", price: 800)
menu2 = Menu.new(name: "すし", price: 1000)
menu3 = Menu.new(name: "コーラ", price: 300)
menu4 = Menu.new(name: "お茶", price: 200)

menus = [menu1, menu2, menu3, menu4]

# 変数indexを定義して「0」を代入してください
index = 0
menus.each do |menu|
  # 番号をつけてメニューの内容が出力されるように書き換えてください
  puts "#{index}. #{menu.info}"

  # 変数indexに1を加えて値を更新してください
  index += 1
end
