# frozen_string_literal: true

RSpec.describe StudentGradeManager::Student do
  subject(:student) do
    described_class.new(name: "Mirana")
  end

  describe "#name" do
    it "retourne le nom de l'étudiant" do
      expect(student.name).to eq("Mirana")
    end
  end

  describe "#grades" do
    it "retourne une liste vide lors de la création" do
      expect(student.grades).to eq([])
    end
  end


describe "validations" do
  it "refuse un nom non textuel" do
    expect do
      described_class.new(name: 123)
    end.to raise_error(
      ArgumentError,
      "Le nom de l'étudiant doit être une chaîne de caractères"
    )
  end

  it "refuse un nom vide" do
    expect do
      described_class.new(name: "   ")
    end.to raise_error(
      ArgumentError,
      "Le nom de l'étudiant ne peut pas être vide"
    )
  end

  it "supprime les espaces autour du nom" do
    student = described_class.new(name: "  Manda  ")

    expect(student.name).to eq("Mirana")
  end
end

describe "#add_grade" do
  it "ajoute une note à la liste de l'étudiant" do
    student.add_grade(
      subject: "Ruby",
      score: 16,
      coefficient: 3
    )

    expect(student.grades.length).to eq(1)
  end

  it "ajoute un objet Grade" do
    student.add_grade(
      subject: "Ruby",
      score: 16,
      coefficient: 3
    )

    expect(student.grades.first).to be_a(
      StudentGradeManager::Grade
    )
  end

  it "conserve les informations de la note" do
    student.add_grade(
      subject: "Ruby",
      score: 16,
      coefficient: 3
    )

    grade = student.grades.first

    expect(grade.subject).to eq("Ruby")
    expect(grade.score).to eq(16)
    expect(grade.coefficient).to eq(3)
  end

  it "retourne la note créée" do
    grade = student.add_grade(
      subject: "Ruby",
      score: 16,
      coefficient: 3
    )

    expect(grade).to be_a(StudentGradeManager::Grade)
  end

  it "permet d'ajouter plusieurs notes" do
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

    expect(student.grades.length).to eq(2)
  end
end

describe "#average" do
  it "retourne 0.0 lorsque l'étudiant n'a aucune note" do
    expect(student.average).to eq(0.0)
  end

  it "retourne la note lorsqu'il n'y a qu'une seule matière" do
    student.add_grade(
      subject: "Ruby",
      score: 16,
      coefficient: 3
    )

    expect(student.average).to eq(16.0)
  end

  it "calcule la moyenne pondérée des notes" do
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

    expect(student.average).to eq(15.2)
  end

  it "arrondit la moyenne à deux décimales" do
    student.add_grade(
      subject: "Ruby",
      score: 13,
      coefficient: 2
    )

    student.add_grade(
      subject: "Algorithmique",
      score: 14,
      coefficient: 1
    )

    expect(student.average).to eq(13.33)
  end
end



end