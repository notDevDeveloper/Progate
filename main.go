package main

func main() {
	n := 3
	switch n {
	// caseを追加し、nが0の場合、"凶です"と出力してください
	case 0:
		println("凶です")
	// caseを追加し、nが1または2の場合、"吉です"と出力してください
	case 1, 2:
		println("吉です")
	// caseを追加し、nが3または4の場合、"中吉です"と出力してください
	case 3, 4:
		println("中吉です")
	// caseを追加し、nが5の場合、"大吉です"と出力してください
	case 5:
		println("大吉です")
	default:
	}
}
