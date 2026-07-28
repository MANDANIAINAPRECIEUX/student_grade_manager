# frozen_string_literal: true

module StudentGradeManager
  class Grade
    attr_reader :subject, :score, :coefficient

    def initialize(subject:, score:, coefficient:)
      @subject = subject
      @score = score
      @coefficient = coefficient
    end
  end
end