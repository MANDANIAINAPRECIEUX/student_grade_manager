# frozen_string_literal: true

module StudentGradeManager
  class Student
    attr_reader :name, :grades

    def initialize(name:)
      @name = name
      @grades = []
    end
  end
end