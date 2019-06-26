# encoding: utf-8

val = 1
while val < 5
  p val
  val += 1
end

val = 1
flag = true

while val < 5
  while flag
    puts("whileを入れ子にする")
    flag = false
  end
  flag = true
  val += 1
end
