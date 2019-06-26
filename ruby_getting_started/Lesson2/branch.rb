# encoding: utf-8

flag = true

if flag == true
  p "true"
end

flag = 0

if flag
  p "true"
end

flag = false

if flag
  p "false"
end

flag = nil

if flag
  p "nil"
end

val = 23

if val == 50
  puts("同じ")
elsif val < 20
  puts("20より小さい")
elsif val < 30
  puts("30より小さい")
else
  puts("それ以外")
end

val = 42

if val > 10
  puts("valは10より大きい")

  if val > 20
    puts("valは20より大きい")
  elsif val < 20
    puts("valは10より大きく20より小さい")
  end
end
