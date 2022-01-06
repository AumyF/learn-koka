fun main() {
  say-hello(10)
}

fun say-hello0( n : int ) {
  var i := 0
  while(fn(){ i < n }, fn(){
    println("hello!")
    i := i + 1
  })
}

fun say-hello1( n : int ) {
  var i := 0
  while({ i < n }, {
    println("hello!")
    i := i + 1
  })
}

fun say-hello2( n : int) {
  var i := 0
  while { i < n } {
    println("hello!")
    i := i + 1
  }
}

fun say-hello( n : int )
  var i := 0
  while {i < n} 
    println("hello!")
    i := i + 1