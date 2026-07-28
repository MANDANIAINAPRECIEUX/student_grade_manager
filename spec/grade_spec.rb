# frozen_string_literal: true

RSpec.describe StudentGradeManager::Grade do
  subject(:grade) do
    described_class.new(
      subject: "Ruby",
      score: 16,
      coefficient: 3
    )
  end

  describe "#subject" do
    it "retourne le nom de la matière" do
      expect(grade.subject).to eq("Ruby")
    end
  end

  describe "#score" do
    it "retourne la note" do
      expect(grade.score).to eq(16)
    end
  end

  describe "#coefficient" do
    it "retourne le coefficient" do
      expect(grade.coefficient).to eq(3)
    end
  end
end