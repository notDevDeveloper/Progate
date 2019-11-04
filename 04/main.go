package main

import "fmt"

func main() {
	totalScore := 0
	fn(totalScore)

	// 変数totalScoreの値を出力してください
	fmt.Println(totalScore)
	// 変数totalScoreのポインタを出力してください
	fmt.Println(&totalScore)

}

func fn(totalScore int) {
	totalScore += 10
	// fn関数の変数totalScoreの値を出力してください
	fmt.Println(totalScore)
	// fn関数の変数totalScoreのポインタを出力してください
	fmt.Println(&totalScore)
}
