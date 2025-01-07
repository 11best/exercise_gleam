import gleam/io

pub fn main() {
  sum_score(20, 20, 30)
  |> get_grade
  |> io.println
}

fn sum_score(a: Int, mid: Int, final: Int) -> Int {
  a + mid + final
}

pub fn get_grade(score: Int) -> String {
  case score {
    score if score >= 80 -> "A"
    score if score < 80 && score >= 75 -> "B+"
    score if score < 75 && score >= 70 -> "B"
    score if score < 70 && score >= 65 -> "C+"
    score if score < 65 && score >= 60 -> "C"
    score if score < 60 && score >= 55 -> "D+"
    score if score < 55 && score >= 50 -> "D"
    _ -> "F"
  }
}
