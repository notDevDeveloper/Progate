package main

import "fmt"

func main() {
	// 引数に1を渡してください
	ask(1, "dog")

	// 引数に2を渡してください
	ask(2, "cat")

	// 引数に3を渡してください
	ask(3, "fish")
}

// 引数numberを追加してください
func ask(number int, question string) {
	var input string
	// 下の１行を削除し、指定されたコードを貼り付けてください
	fmt.Printf("[質問%d] 次の単語を入力してください: %s\n", number, question)

	fmt.Scan(&input)
	fmt.Printf("%sと入力されました\n", input)
}
