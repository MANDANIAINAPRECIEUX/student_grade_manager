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
end