# StudentGradeManager

StudentGradeManager is a Ruby gem for managing student grades, calculating weighted averages, determining admission status, and assigning academic mentions.

## Project status

The project structure and gem metadata have been initialized.

- Initial tests for the `Grade` class have been added.
- The project is currently in the red phase of test-driven development.
- The `Grade` class has been implemented.
- A grade stores a subject, a score, and a coefficient.
- Initial tests for the `Grade` class are passing.
- Subject names must be non-empty strings.
- Leading and trailing spaces are removed from subject names.
- The `Student` class has been created.
- A student stores a name and an initially empty grade collection.
- Student names must be non-empty strings.
- Leading and trailing spaces are removed from student names.
- Students can add and store multiple grades.
- The `add_grade` method automatically creates a `Grade` object.
- Students can calculate their weighted average.
- Weighted averages are rounded to two decimal places.
- A student without grades has an average of `0.0`.
- Students can generate a complete result report.
- Reports include grades, weighted average, admission status, and academic mention.

## Installation

TODO: Replace `UPDATE_WITH_YOUR_GEM_NAME_IMMEDIATELY_AFTER_RELEASE_TO_RUBYGEMS_ORG` with your gem name right after releasing it to RubyGems.org. Please do not do it earlier due to security reasons. Alternatively, replace this section with instructions to install your gem from git if you don't plan to release to RubyGems.org.

Install the gem and add to the application's Gemfile by executing:

```bash
bundle add UPDATE_WITH_YOUR_GEM_NAME_IMMEDIATELY_AFTER_RELEASE_TO_RUBYGEMS_ORG
```

If bundler is not being used to manage dependencies, install the gem by executing:

```bash
gem install UPDATE_WITH_YOUR_GEM_NAME_IMMEDIATELY_AFTER_RELEASE_TO_RUBYGEMS_ORG
```

## Business rules

- Grades must be numeric values between 0 and 20.
- Coefficients must be numeric values greater than 0.
- The weighted average is calculated using grades and coefficients.
- A student is admitted when the weighted average is at least 10.

### Academic mentions

| Weighted average | Result      |
| ---------------- | ----------- |
| Below 10         | Failed      |
| 10 to 11.99      | Pass        |
| 12 to 13.99      | Fairly good |
| 14 to 15.99      | Good        |
| 16 to 17.99      | Very good   |
| 18 to 20         | Excellent   |

## Usage

puts students.reports

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/student_grade_manager. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/student_grade_manager/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the StudentGradeManager project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/student_grade_manager/blob/master/CODE_OF_CONDUCT.md).
