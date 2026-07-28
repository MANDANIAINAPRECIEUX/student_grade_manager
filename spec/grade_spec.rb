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


describe "validations" do
  it "accepte une note comprise entre 0 et 20" do
    expect do
      described_class.new(
        subject: "Ruby",
        score: 15,
        coefficient: 2
      )
    end.not_to raise_error
  end

  it "refuse une note inférieure à 0" do
    expect do
      described_class.new(
        subject: "Ruby",
        score: -1,
        coefficient: 2
      )
    end.to raise_error(ArgumentError, "La note doit être comprise entre 0 et 20")
  end

  it "refuse une note supérieure à 20" do
    expect do
      described_class.new(
        subject: "Ruby",
        score: 21,
        coefficient: 2
      )
    end.to raise_error(ArgumentError, "La note doit être comprise entre 0 et 20")
  end

  it "refuse une note non numérique" do
    expect do
      described_class.new(
        subject: "Ruby",
        score: "seize",
        coefficient: 2
      )
    end.to raise_error(ArgumentError, "La note doit être un nombre")
  end

  it "refuse un coefficient égal à zéro" do
    expect do
      described_class.new(
        subject: "Ruby",
        score: 16,
        coefficient: 0
      )
    end.to raise_error(ArgumentError, "Le coefficient doit être supérieur à 0")
  end

  it "refuse un coefficient négatif" do
    expect do
      described_class.new(
        subject: "Ruby",
        score: 16,
        coefficient: -2
      )
    end.to raise_error(ArgumentError, "Le coefficient doit être supérieur à 0")
  end

  it "refuse un coefficient non numérique" do
    expect do
      described_class.new(
        subject: "Ruby",
        score: 16,
        coefficient: "trois"
      )
    end.to raise_error(ArgumentError, "Le coefficient doit être un nombre")
  end
end


end

