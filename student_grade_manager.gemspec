# frozen_string_literal: true

require_relative "lib/student_grade_manager/version"

Gem::Specification.new do |spec|
  spec.name = "student_grade_manager"
  spec.version = StudentGradeManager::VERSION
  spec.authors = ["ANDRIAMIARISON MANDANIAINA PRECIEUX"]
  spec.email = ["mandaniainaprecieux@yahoo.com"]

  spec.summary = "A Ruby gem for managing student grades and weighted averages."
  spec.description = "StudentGradeManager calculates weighted averages, validates grades, " \
                     "determines admission status, and assigns academic mentions."
  spec.homepage = "https://github.com/MANDANIAINAPRECIEUX/student_grade_manager"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.1.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "#{spec.homepage}/tree/v#{spec.version}"
  spec.metadata["changelog_uri"] = "#{spec.homepage}/blob/main/CHANGELOG.md"
  spec.metadata["rubygems_mfa_required"] = "true"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` command loads files already tracked by Git.
  gemspec = File.basename(__FILE__)

  spec.files = IO.popen(
    %w[git ls-files -z],
    chdir: __dir__,
    err: IO::NULL
  ) do |ls|
    ls.readlines("\x0", chomp: true).reject do |file|
      (file == gemspec) ||
        file.end_with?(".gem") ||
        file.start_with?(
          *%w[bin/ test/ spec/ features/ .git .github appveyor Gemfile]
        )
    end
  end

  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) do |file|
    File.basename(file)
  end
  spec.require_paths = ["lib"]
end
