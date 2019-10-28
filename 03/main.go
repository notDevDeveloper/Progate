package main

import "fmt"

func main() {
	ask()
	// もう一度ask関数を呼び出してください
	ask()
}

func ask() {
	var input string
	fmt.Println("次の単語を入力してください: dog")
	fmt.Scan(&input)
	fmt.Printf("%sと入力されました\n", input)
}
