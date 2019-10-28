package main

import "fmt"

func main() {
	// totalScoreにask関数からの戻り値を代入してください
	totalScore := ask(1, "dog")

	// 指定されたコードを貼り付けてください
	fmt.Println("スコア", totalScore)
}

// 戻り値の型を定義してください
func ask(number int, question string) int {
	var input string
	fmt.Printf("[質問%d] 次の単語を入力してください: %s\n", number, question)
	fmt.Scan(&input)
	fmt.Printf("%sと入力されました\n", input)
	// 戻り値の値を追加してください
	return 10
}
