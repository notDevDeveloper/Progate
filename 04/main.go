package main

import "fmt"

func main() {
	name := "John"

	fmt.Println(name)
	// 変数「namePtr」を定義し、nameのポインタを代入してください
	var namePtr *string = &name

	// ポインタ型変数「namePtr」を使って、変数nameの値を「Kate」に更新してください
	*namePtr = "Kate"

	// nameの値を出力してください
	fmt.Println(name)
}
