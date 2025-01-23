import gleam/int
import gleam/io
import gleam/list
import gleam/result

pub fn main() {
  io.println("hi min max")

  let num_list = [4, 7, 1, 3, 2, 3, 0, 79, 9, 8]

  use max <- result.map(num_list |> list.max(int.compare))
  io.debug(max)

  use min <- result.map(find_min(num_list))
  io.debug(min)
}

fn find_min(num_list: List(Int)) {
  num_list
  |> list.reduce(fn(acc, x) {
    case x {
      x if acc < x -> acc
      _ -> x
    }
  })
}
