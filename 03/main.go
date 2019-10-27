package main

import "fmt"

func main() {
	// 変数inputを定義してください
	var input string

	// 「次の単語を入力してください: dog」と出力してください
	fmt.Println("次の単語を入力してください: dog")

	// Scanで入力を受け取ってください
	fmt.Scan(&input)

	// 受け取った値を出力してください
	fmt.Printf("%sと入力されました", input)
}
