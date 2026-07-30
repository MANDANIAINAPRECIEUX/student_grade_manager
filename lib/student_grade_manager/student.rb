# frozen_string_literal: true

# frozen_string_literal: true

module StudentGradeManager
  class Student
    attr_reader :name, :grades

    def initialize(name:)
      validate_name(name)

      @name = name.strip
      @grades = []
    end


def add_grade(subject:, score:, coefficient:)
  grade = Grade.new(
    subject: subject,
    score: score,
    coefficient: coefficient
  )

  @grades << grade
  grade
end


    private

    def validate_name(name)
      unless name.is_a?(String)
        raise ArgumentError,
              "Le nom de l'étudiant doit être une chaîne de caractères"
      end

      return unless name.strip.empty?

      raise ArgumentError, "Le nom de l'étudiant ne peut pas être vide"
    end
  end
end