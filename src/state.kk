effect counter
  ctl increment() : ()
  ctl decrement() : ()
  ctl cnt() : int

fun print-increment-print()
  cnt().println
  increment()
  cnt().println

fun countdown()
  while { cnt() > -10 }
    decrement()
    cnt().println()

fun root()
  print-increment-print()
  print-increment-print()
  countdown()


fun handle-state(th)
  var value := 0
  handle (th)
    fun increment()
      value := value + 1
    fun decrement()
      value := value - 1
    fun cnt()
      value

fun main()
  handle-state
    root()
