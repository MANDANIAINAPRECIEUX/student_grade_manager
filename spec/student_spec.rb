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


end