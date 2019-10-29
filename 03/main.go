package main

import "fmt"

func main() {
	totalScore := ask(1, "dog")
	totalScore += ask(2, "cat")
	totalScore += ask(3, "fish")

	fmt.Println("スコア", totalScore)
}

func ask(number int, question string) int {
	var input string
	fmt.Printf("[質問%d] 次の単語を入力してください: %s\n", number, question)
	fmt.Scan(&input)

	if question == input {
		// 問題文の単語と入力値が一致するときの処理を追加してください
		fmt.Println("正解!")
		return 10

	} else {
		// 問題文の単語と入力値が一致しないときの処理を追加してください
		fmt.Println("不正解!")
		return 0
	}
}
