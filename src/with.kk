fun readFile(name, f)
  println("reading a file " ++ name)
  f("hogehoge")


fun writeFile(name, content, f)
  println("writing to " ++ name)
  println("content: " ++ content)
  f()

fun readAndWrite()
  with f1 <- readFile("src/hello.kk")
  with f2 <- readFile("src/caesar.kk")
  println("f1: " ++ f1)
  println("f2: " ++ f2)
  with writeFile("foo.txt", f1 ++ f2)
  println("succeed.")

fun readAndWrite2()
  readFile("src/hello.kk", fn(f1){
    readFile("src/caesar.kk", fn(f2){
      println("f1: " ++ f1)
      println("f2: " ++ f2)
      writeFile("foo.txt", f1 ++ f2, fn(){
        println("succeed.")
      })
    })
  })

fun times(n, f)
  for(1, n) fn(i)
    f(i)

fun twice(f) {
  f()
  f()
}

fun map-double(l : list<int>)
  with i <- l.map
  println(i * 2)

fun product(a : list<int>, b : list<int>)
  with x <- a.flatmap
  with y <- b.map
  x * y


// fun main() {
//   // g()

//   with finally { println("finished!") }
//   println("processing!")
//   throw("oops")
// }

fun main()
  [1,2,3].product([4,5,6]).show.println

fun dice()
  with x <- 6.times
  with y <- 6.times
  println(x.show ++ ", " ++ y.show)
