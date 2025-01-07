import gleeunit
import gleeunit/should
import grading

pub fn main() {
  gleeunit.main()
}

pub fn grading_test() {
  grading.get_grade(10)
  |> should.equal("F")

  grading.get_grade(99)
  |> should.equal("A")

  grading.get_grade(56)
  |> should.equal("D+")
}
