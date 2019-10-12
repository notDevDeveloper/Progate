# encoding: utf-8

exams = [
  { subject: "Math", score: 80 },
  { subject: "Science", score: 55 },
]

# each文を用いて、要素ごとに「○○の結果は△△点です」と出力してください
exams.each do |exam|
  puts "#{exam[:subject]}の結果は#{exam[:score]}点です"
end
