package main

import "fmt"

func main() {
	name := "John"

	fmt.Println(name)
	fmt.Println(&name)
	// 変数「namePtr」を定義し、nameのポインタを代入してください
	var namePtr *string = &name

	// namePtrの値を出力してください
	fmt.Println(namePtr)
}
