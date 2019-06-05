# encoding: utf-8

# Menuクラスをmenu.rbに移動して、このファイルからは削除してください
# Menuクラスを移動したら、menu.rbを読み込んでください
require "./menu"
# 以下のコードは移動させないでください
menu1 = Menu.new(name: "すし", price: 1000)

puts menu1.info
