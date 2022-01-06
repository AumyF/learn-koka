import std/os/file
import std/os/path

effect logger
  ctl log(value : int) : ()

fun f(x : int, y : int)
  val a = x * x
  log(a)
  return a * y

fun double-handler-example()
  // write-text-fileが投げる作用をハンドリング
  with brk throw-exn(err)
    println(err.show)
  with ctl log(value)
    // exnを投げうる
    write-text-file("/dev/stderr".path, value.show)
    resume(())
  f(2, 3).println

fun handle-example()
  handle ({ f(2,3).println })
    ctl log(value)
      println(value)
      resume(())
  
fun with-handler-example()
  with handler
    ctl log(value)
      println(value)
      resume(())
  f(2, 3).println

fun with-handler-example2()
  with ctl log(value)
    println(value)
    resume(())
  f(2, 3).println

fun with-handler-example3()
  with fun log(value)
    println(value)

fun main()
  with-handler-example2()
