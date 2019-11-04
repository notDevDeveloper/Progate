# Progate

## Go学習コース3

### 1章：目標物を確認しよう

#### 1. 目標物を確認しよう

### 2章：文字列の入力

#### 2. fmt.Scan

##### fmt.Scan

**fmt.Scan(&変数名)**を使うとコンソールでの入力ができる。以下の場合、入力された値は変数inputに代入される。

```go
var input string
fmt.Scan(&input)
```

##### 入力の流れ

**fmt.Scan**を使うと入力ができるようになる。

### 3章：関数を使ってみよう

#### 3. 関数とは

##### 関数とは

**関数（かんすう）**とは、「いくつかの処理をまとめたもの」。処理を関数にまとめると、後ほど何度でも使うことができる。

##### 関数の定義

関数は、以下のように「**func 関数名()**」と書く。その後ろの「**{}**」の中にまとめたい処理を書くことで関数を用意することができる。このように関数を用意することを「**関数を定義する**」と言う。

```go
func 関数名() {
  // まとめたい処理を書く
}
```

##### 関数の呼び出し

関数を定義しただけでは、その中の処理は実行されない。以下のように「**関数名()**」と書くことで関数の中の処理を実行できる。このことを「**関数を呼び出す**」と言う。

```go
func main() {
  ask()  // 関数を呼び出す
}
func ask() {
  var input string
  fmt.Println("次の単語を入力してください: dog")
  fmt.Scan(&input)
  fmt.Printf("%sと入力されました", input)
}
```

#### 4. 関数の基本

##### main関数

今まで処理を書いてきた**func main() {...}** の部分も**main関数**と呼ばれる関数である。main関数はプログラムが実行されると最初に呼び出される特別な関数。

##### 関数を書く順番

関数を定義する順番にとくに決まりはない。以下ではmain関数とask関数の順番を変えているが、実行に影響することはない。

```go
func main() {
  ask()
}
func ask() {
  ・・・
}
```

```go
func ask() {
  ・・・
}
func main() {
  ask()
}
```

##### 関数を複数回呼び出す

1度定義すれば同様の処理を何度でも実行できるのが関数のメリット。以下の例では、ask関数を2回呼び出している。

```go
func main() {
  ask()
  ask()
}
func ask() {
  ・・・
}
```

### 4章：引数と戻り値

#### 5. 引数

##### 関数に値を渡す

以下のように関数を呼び出す際に「**()**」の中に値を書くことで、値を渡すことができる。この値のことを**引数**という。

```go
func main() {
  ask("dog")
  ask("cat")
}
```

##### 引数を受け取る

渡した値を使うためには、受け取るための変数を用意する必要がある。以下では、文字列"cat"をstring型の変数questionで受け取っている。

```go
func main() {
  ask("cat")
}
func ask(question string) {
  ・・・
}
```

##### 引数を使う

渡された値は受け取った変数名を用いて使うことができる。よって、以下のように渡す値を変えることで問題文も変えることができる。

```go
func main() {
  ask("dog")  // 引数として"dog"を渡している
  ask("cat")  // 引数として"cat"を渡している
}
func ask(question string) {
  ・・・
  fmt.Printf("次の単語を入力してください:%s\n", question)
  ・・・
}
```

##### 変数の値を渡す

関数には**変数の値**を引数として渡すこともできる。以下では変数textを引数として、ask関数の変数questionに渡している。

```go
func main() {
  text := "cat"
  ask(text)
}
func ask(question string) {
  ・・・
  fmt.Printf("次の単語を入力してください:%s\n", question)
  ・・・
}
```

#### 6. 問題番号を出す

##### 問題番号を出す

以下のように、引数は**コンマ（,）** 区切りで複数受け取ることができる。

```go
func ask(number int, question string) {
  ・・・
  fmt.Printf("[質問 %d] 次の単語を入力してください:%s\n", number, question)
  ・・・
}
```

##### 複数の引数の渡し方

複数の引数を使うとき、渡す順番に注意する。以下では、ask関数の引数の順が **（問題番号, 問題文）** となっている。

```go
func main() {
  ask(1, "dog")
  ask(2, "cat")
  ask(3, "fish")
}
func ask(number int, question, string) {
  fmt.Printf("[質問 %d] 次の単語を入力してください:%s\n", number, question)
}
```

##### 引数の注意点

複数の引数を使うとき、引数の方にも注意する。

#### 7. 戻り値とは

##### 戻り値とは

**戻り値（もどりち）** を使うことで呼び出し元に値を返すことができる。

##### 戻り値のある関数の定義

戻り値のある関数の定義の仕方は以下のようになる。

```go
// 戻り値のある関数の定義
func 関数名(引数名 引数の型) 戻り値の型 {
  処理
}
```

以下では、ask関数は処理の終わりに戻り値10を返している。「**return 10**」のように書くことで呼び出し元に10が返る。

```go
func ask(number int, question string) int {
  fmt.Printf("[質問%d] 次の単語を入力してください: %s\n", number, question)
  ・・・
  return 10
}
```

##### 戻り値の受け取り方

関数の戻り値は変数に代入するなどして受け取ることができる。以下では、ask関数を呼び出して返ってきた戻り値10を変数totalScoreに代入している。

```go
func main() {
  totalScore := ask(1, "dog")
  fmt.Println("スコア", totalScore)
}
func ask(number int, question string) int {
  ・・・
  return 10
}
```

#### 8. 計算をしよう

##### スコアの計算

##### 戻り値を計算

以下のように、「+=」を使用することで、ask関数の戻り値をそのまま足すことができる。

```go
func main() {
  totalScore := ask(1, "dog")
  totalScore += ask(2, "cat")
  totalScore += ask(3, "fish")
  fmt.Println("スコア", totalScore)
}
func ask(number int, question string) int {
  ・・・
  return 10
}
```

#### 9. 引数と戻り値

##### 正解・不正解を出そう

現状は正解も不正解も10ポイントが戻り値になっている。正解か不正解かで条件分岐し、**正解で10ポイント、不正解で0ポイント**を返すようにする。また同時に「正解」「不正解」も出力する。

### 5章：スコープを学ぼう

#### 10. 関数に値を渡すときの注意点（1）

##### 変数のスコープ

**main関数の中で定義された変数totalScore**は、**main関数の中でしか使えない**。変数には使える範囲があり、その範囲を変数の**スコープ**と呼ぶ。

#### 11. 関数に値を渡すときの注意点（2）

##### 同じ名前の変数

main関数で使用しているtotalScoreとask関数で使用しているtotalScoreは、スコープが違うため同じ名前だが別の変数。

```go
func main() {
  // main関数の変数totalScoreのスコープ ↓
  totalScore := 0
  ask(1, "dog", totalScore)
  ・・・
  fmt.Println("スコア", totalScore)
  ・・・
  // main関数の変数totalScoreのスコープ ↑
}
func ask(number int, question string, totalScore int) {
  // ask関数の引数totalScoreのスコープ ↓
  ・・・
  totalScore += 10
  ・・・
  // ask関数の引数totalScoreのスコープ ↑
}
```

##### 値のコピー

main関数からask関数へ変数を渡しているように見えるが、**実際は変数totalScoreの値をコピーして**ask関数に渡している。そのためask関数のtotalScoreに値を足しても、もとの値は変わらない。
