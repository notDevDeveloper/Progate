# encoding: utf-8

def greeting
  puts("Hello, Ruby!")
end

greeting
greeting

def example(args1, args2)
  args1 + args2
end

p(example(100, 100))

def example
  val = 1
  while val < 10
    if val == 5
      puts("valが5になった")
    end
    val += 1
  end
end

example
