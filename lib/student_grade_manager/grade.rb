# frozen_string_literal: true

module StudentGradeManager
  class Grade
    attr_reader :subject, :score, :coefficient

    def initialize(subject:, score:, coefficient:)
      validate_subject(subject)
      validate_score(score)
      validate_coefficient(coefficient)

      @subject = subject.strip
      @score = score
      @coefficient = coefficient
    end

    private

    def validate_subject(subject)
      unless subject.is_a?(String)
        raise ArgumentError,
              "La matière doit être une chaîne de caractères"
      end

      return unless subject.strip.empty?

      raise ArgumentError, "La matière ne peut pas être vide"
    end

    def validate_score(score)
      unless score.is_a?(Numeric)
        raise ArgumentError, "La note doit être un nombre"
      end

      return if score.between?(0, 20)

      raise ArgumentError, "La note doit être comprise entre 0 et 20"
    end

    def validate_coefficient(coefficient)
      unless coefficient.is_a?(Numeric)
        raise ArgumentError, "Le coefficient doit être un nombre"
      end

      return if coefficient.positive?

      raise ArgumentError, "Le coefficient doit être supérieur à 0"
    end
  end
end