# Progate

## Go学習コース4

### 1章：目標物を確認しよう

#### 1. 目標物を確認しよう

### 2章：アドレスを理解しよう

#### 2. アドレスを理解しよう

##### アドレスとは

コンピューターには**メモリ**と呼ばれる作業場所のようなものが存在する。変数はそのメモリに記録されており、その場所を**アドレス**と呼ぶ。

変数の場所を表す値をアドレスと呼び、実際は「0xc420010230」のように16進数で表現されることが多い。**16進数**とは、数字を数えるときに16で繰り上がるようにする数え方。

##### アドレスを取得してみよう

変数のアドレスを取得するためには、「**&変数名**」とする。メモリ上の記録する場所はコンピューターによっても変わるため、プログラムを実行する度に違うアドレスを出力する場合もある。

```go
func main() {
  name := "John"
  fmt.Println(name)  // nameで値を取得できる
  fmt.Println(&name) // &nameでアドレスを取得できる
}
```

### 3章：ポインターを理解しよう

#### 3. ポインターを理解しよう

##### ポインターとは

**アドレスは値**。整数や文字列のように操作したり変数に代入することができる。**Goではアドレスをポインターと呼んで扱っている**。またポインターが代入された変数を**ポインター型変数**という。

##### ポインター型変数の定義

ポインター型変数を定義するには、変数のデータ型に「***（アスタリスク）**」をつけて宣言する。以下の例ではポインター型変数namePtrを定義し、&nameで取得したポインターを代入している。

```go
func main() {
  name := "John"
  var namePtr *string = &name
  fmt.Println(namePtr)
}
```

#### 4. ポインターを使ってみよう

##### ポインターからアクセスする

ポインター型変数に対して「***（アスタリスク）変数名**」とすることで、そのポインターが示す変数の値を取り出すことができる。以下は「***namePtr**」とすることで変数nameの値を取り出している。

```go
func main() {
  name := "John"
  var namePtr *string = &name
  fmt.Println(*namePtr) // John
}
```

##### ポインターを使って値を更新する

ポインター型変数を使用して、値を直接更新することもできる。更新するには「***変数名 = 更新する値**」と記述する。以下では「*namePtr = "Kate"」で変数nameを更新している。

```go
func main() {
  name := "John"
  var namePtr *string = &name
  *namePtr = "Kate"
  fmt.Println(name) // Kate
}
```

##### ポインターのおさらい

以下のように「**&（アンド）**」「***（アスタリスク）**」を使うことで、ポインターを操作することができる。

```go
// ポインター定義のおさらい
name := "John"
var namePtr *string = &name
```

- ポインター操作のおさらい

|fmt.Println(●●●)|出力される値|
|:-:|:-:|
|name|John|
|&name|0xc...|
|namePtr|0xc...|
|*namePtr|John|

### 4章：他の関数でポインターを使ってみよう

#### 5. 別の関数でポインターを利用する

##### 引数にポインターを指定する

ポインターを別の関数に引数として指定する場合、以下のように、受け取る関数には対応したポインター型の引数を用意する必要がある。

```go
func main() {
  name := "John"
  changeName(&name) // ポインターを引数に指定する
}
func changeName(namePtr *string) { // stringのポインター型で受け取る
  ・・・
}
```

##### 別の関数でポインターを使って値を更新する

ポインターを引数として指定することで、別の関数からでもポインターを使って元の変数を更新することができる。

```go
func main() {
  name := "John"
  changeName(&name)
  fmt.Println(name) // Kate
}
func changeName(namePtr *string) {
  *namePtr = "Kate"
}
```

### 5章：値渡しを理解しよう

#### 6. 引数の仕組みを知ろう

##### 変数を引数に指定する

以下のように、変数totalScoreを引数に指定する場合、その変数自体が渡されるわけではない。実際には変数totalScoreの**値がコピー**され、**新しい変数**に代入される。（「値渡し」とも言われる）。

```go
func main() {
  totalScore := 0
  fn(totalScore) // totalScoreを引数に指定する
  ・・・
}
func fn(totalScore int) { // int型で受け取る
  ・・・
}
```

##### 渡した値を更新する

main関数とfn関数のそれぞれの変数totalScoreは、**別の変数**。そのため、fn関数のtotalScoreを更新しても、fn関数のtotalScoreのみ値が更新される。

```go
func main() {
  totalScore := 0
  fn(totalScore)
  fmt.Println(totalScore) // totalScoreの値を出力 （0）
  ・・・
}
func fn(totalScore int) {
  totalScore += 10 // fn関数のtotalScoreのみ値を更新
  ・・・
}
```

##### ポインターを見比べる

main関数とfn関数のそれぞれのtotalScoreを出力すると、それらが実際に**別の場所にある変数**であることがわかる。

```go
func main() {
  totalScore := 0
  fn(totalScore)
  fmt.Println(totalScore) // 0・・・main関数のtotalScoreの値
  fmt.Println(&totalScore) // 0xc420010230・・・main関数のtotalScoreのポインタ
}
func fn(totalScore int) {
  totalScore += 10
  fmt.Println(totalScore) // 10・・・fn関数のtotalScoreの値
  fmt.Println(&totalScore) // 0xc490283052・・・fn関数のtotalScoreのポインタ
}
```

#### 7. 引数のまとめ

##### 引数に整数などの値を指定した場合

calculate関数は受け取った引数に1を足す関数。変数aを引数に指定した場合、**値がコピーされ別の変数が生成**される。よってcalculate関数で値を更新しても、main関数の変数aは更新されない。

```go
func main() {
  a := 10
  calculate(a)
  fmt.Println("引数に整数を指定した場合：", a) // 引数に整数を指定した場合：10
}
func calculate(a int) { // 整数などの値を受け取る
  a += 1
}
```

##### 引数にポインターを指定した場合

ポインターを指定すると、calculate関数から**元の変数の値を更新**できる。このとき、受け取る引数はポインター型を指定することに注意する。

```go
func main() {
  b := 10
  calculate(&b)
  fmt.Println("引数にポインターを指定した場合：", b) // 引数にポインターを指定した場合：11  
}
func calculate(bPtr *int) { // ポインターを渡す
  *bPtr += 1
}
```

### 6章：タイピングゲームを作ろう

#### 8. ポインターを使ってスコア計算をしよう

##### ポインターを使ってスコアを計算する
