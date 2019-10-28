package main

import "fmt"

func main() {
	// 引数を使って、3回askを呼んでください
	ask("dog")
	ask("cat")
	ask("fish")
}

// 引数questionを追加してください
func ask(question string) {
	var input string
	// 以下の内容をfmt.Printfを使用して、修正してください
	fmt.Printf("次の単語を入力してください:%s\n", question)
	fmt.Scan(&input)
	fmt.Printf("%sと入力されました\n", input)
}
