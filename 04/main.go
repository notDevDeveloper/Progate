package main

import "fmt"

func main() {
	name := "John"

	fmt.Println(name)
	// changeName関数を呼び出してください
	changeName(&name)

	// nameを出力してください
	fmt.Println(name)

}

// changeName関数が、文字列のポインタ型で値を受け取れるようにしてください。
func changeName(namePtr *string) {
	// ポインタ型変数namePtrを使って、変数nameの値を「Kate」に更新してください
	*namePtr = "Kate"
}
