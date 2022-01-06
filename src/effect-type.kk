import std/num/random

// int -> total int
// 数学的な全域関数。純粋関数。
fun square(x : int)
  x * x

// (int, int) -> exn int
// 例外をブン投げる可能性がある。exception。
fun divide(x : int, y : int)
  if y == 0 then throw("divide by zero")
  x / y

// int -> div int
// 停止しない可能性がある。diverge。
fun fact(n : int) : div int
  if n == 0 then 1
  else n * fact (n - 1)

// int -> console int
// コンソールに書き込む可能性がある。
fun log(i : int)
  println(i)
  i

fun map-maybe(m : maybe<a>, f : a -> e b) : e maybe<b>
  match m
    Just(v) -> v.f.Just
    Nothing -> Nothing

fun main()
  // maybe<int>
  Just(3).map-maybe(square)
  // div maybe<int>
  Just(10).map-maybe(fact)

