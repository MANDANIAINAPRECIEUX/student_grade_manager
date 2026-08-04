# frozen_string_literal: true

RSpec.describe StudentGradeManager do
  it "has a version number" do
    expect(StudentGradeManager::VERSION).not_to be nil
  end

  # it "does something useful" do
  #   expect(false).to eq(true)
  # end
  it "defines the StudentGradeManager module" do
    expect(described_class).to be_a(Module)
  end
end
