# frozen_string_literal: true

require "student_grade_manager"

student = StudentGradeManager::Student.new(name: "Manda")

student.add_grade(
  subject: "Ruby",
  score: 16,
  coefficient: 3
)

student.add_grade(
  subject: "Algorithmique",
  score: 14,
  coefficient: 2
)

puts student.report
