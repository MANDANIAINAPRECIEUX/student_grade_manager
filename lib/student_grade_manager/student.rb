# frozen_string_literal: true

module StudentGradeManager
  # Represents a student and manages their grades and academic results.
  class Student
    MENTIONS = [
      [18, "Excellent"],
      [16, "Très bien"],
      [14, "Bien"],
      [12, "Assez bien"],
      [10, "Passable"],
      [0, "Ajourné"]
    ].freeze

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

    def average
      return 0.0 if grades.empty?

      weighted_total = grades.sum do |grade|
        grade.score * grade.coefficient
      end

      coefficient_total = grades.sum(&:coefficient)

      (weighted_total.to_f / coefficient_total).round(2)
    end

    def admitted?
      return false if grades.empty?

      average >= 10
    end

    def mention
      return "Non évalué" if grades.empty?

      MENTIONS.find do |minimum_average, _mention|
        average >= minimum_average
      end.last
    end

    def report
      [
        "Étudiant : #{name}",
        "Notes :",
        grades_report,
        "Moyenne : #{average}",
        "Statut : #{admission_status}",
        "Mention : #{mention}"
      ].join("\n")
    end

    private

    def grades_report
      return "Aucune note enregistrée" if grades.empty?

      grades.map { |grade| format_grade(grade) }.join("\n")
    end

    def format_grade(grade)
      "#{grade.subject} : #{grade.score}/20 — coefficient #{grade.coefficient}"
    end

    def admission_status
      admitted? ? "Admis" : "Non admis"
    end

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