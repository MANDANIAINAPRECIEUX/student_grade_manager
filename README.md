StudentGradeManager est une gem Ruby permettant de gérer les notes des étudiants, de calculer les moyennes pondérées, de déterminer le statut d’admission, d’attribuer une mention académique et de générer un rapport complet.
StudentGradeManager is a Ruby gem for managing student grades, calculating weighted averages, determining admission status, assigning academic mentions, and generating complete student reports.




# StudentGradeManager

[🇫🇷 Français](#français) | [🇬🇧 English](#english)

---

# Français

StudentGradeManager est une gem Ruby permettant de gérer les notes des étudiants, de calculer les moyennes pondérées, de déterminer le statut d’admission, d’attribuer une mention académique et de générer un rapport complet.

## Fonctionnalités

- Création et gestion d’étudiants
- Ajout de plusieurs notes par étudiant
- Validation du nom de l’étudiant et des matières
- Validation des notes comprises entre `0` et `20`
- Validation des coefficients strictement supérieurs à `0`
- Calcul de la moyenne pondérée
- Vérification du statut d’admission
- Attribution automatique d’une mention académique
- Génération d’un rapport complet
- Tests automatisés avec RSpec
- Vérification de la qualité du code avec RuboCop
- Signatures de types avec RBS

## État du projet

La version `0.1.0` est officiellement publiée sur RubyGems.

- Tous les tests RSpec passent
- Le projet passe les vérifications RuboCop
- Les fichiers Ruby utilisent des fins de ligne `LF`
- Le paquet public a été installé et testé
- Les publications RubyGems sont protégées par l’authentification multifacteur

## Installation

Installez la gem depuis RubyGems :

```bash
gem install student_grade_manager
```

Vous pouvez également l’ajouter au `Gemfile` de votre application :

```ruby
gem "student_grade_manager", "~> 0.1.0"
```

Puis exécutez :

```bash
bundle install
```

## Utilisation

Chargez la gem :

```ruby
require "student_grade_manager"
```

Créez un étudiant :

```ruby
student = StudentGradeManager::Student.new(name: "Manda")
```

Ajoutez des notes :

```ruby
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
```

Calculez la moyenne pondérée :

```ruby
puts student.average
# 15.2
```

Vérifiez l’admission :

```ruby
puts student.admitted?
# true
```

Obtenez la mention académique :

```ruby
puts student.mention
# Bien
```

Générez le rapport complet :

```ruby
puts student.report
```

Résultat attendu :

```text
Étudiant : Manda
Notes :
Ruby : 16/20 — coefficient 3
Algorithmique : 14/20 — coefficient 2
Moyenne : 15.2
Statut : Admis
Mention : Bien
```

## Règles métier

- Le nom d’un étudiant doit être une chaîne de caractères non vide.
- Le nom d’une matière doit être une chaîne de caractères non vide.
- Les espaces placés au début et à la fin des noms sont supprimés.
- Une note doit être numérique et comprise entre `0` et `20`.
- Un coefficient doit être numérique et strictement supérieur à `0`.
- La moyenne est pondérée selon les coefficients.
- La moyenne est arrondie à deux décimales.
- Un étudiant est admis lorsque sa moyenne est supérieure ou égale à `10`.
- Un étudiant sans note possède une moyenne de `0.0` et n’est pas admis.

### Mentions académiques

| Moyenne pondérée | Mention      |
| ---------------- | ------------ |
| Aucune note      | `Non évalué` |
| Inférieure à 10  | `Ajourné`    |
| De 10 à 11,99    | `Passable`   |
| De 12 à 13,99    | `Assez bien` |
| De 14 à 15,99    | `Bien`       |
| De 16 à 17,99    | `Très bien`  |
| De 18 à 20       | `Excellent`  |

## Exécuter l’exemple

Installez les dépendances :

```bash
bundle install
```

Puis exécutez :

```bash
bundle exec ruby -Ilib examples/basic_usage.rb
```

## Développement

Préparez l’environnement :

```bash
ruby bin/setup
```

Lancez les tests :

```bash
bundle exec rspec
```

Vérifiez la qualité du code :

```bash
bundle exec rubocop
```

Lancez la console Ruby :

```bash
bundle exec ruby bin/console
```

Exécutez les tâches automatisées :

```bash
bundle exec rake
```

## Construction locale

Construisez la gem :

```bash
gem build student_grade_manager.gemspec
```

Installez le paquet généré :

```bash
gem install ./student_grade_manager-0.1.0.gem
```

Vérifiez la version installée :

```bash
gem list student_grade_manager
```

## Signatures de types

Les signatures RBS sont disponibles dans :

```text
sig/student_grade_manager.rbs
```

Elles décrivent les paramètres et les types de retour de l’API publique.

## Liens

- [Version 0.1.0 sur GitHub](https://github.com/MANDANIAINAPRECIEUX/student_grade_manager/releases/tag/v0.1.0)
- [Gem sur RubyGems](https://rubygems.org/gems/student_grade_manager)
- [Historique des modifications](CHANGELOG.md)
- [Code de conduite](CODE_OF_CONDUCT.md)
- [Licence MIT](LICENSE.txt)

## Contribution

Les signalements de problèmes et les propositions d’amélioration sont les bienvenus sur le [dépôt GitHub](https://github.com/MANDANIAINAPRECIEUX/student_grade_manager).

Les contributeurs doivent respecter le [Code de conduite](CODE_OF_CONDUCT.md).

## Licence

StudentGradeManager est distribué comme logiciel open source selon les conditions de la [licence MIT](LICENSE.txt).

---

# English

StudentGradeManager is a Ruby gem for managing student grades, calculating weighted averages, determining admission status, assigning academic mentions, and generating complete student reports.

## Features

- Create and manage students
- Add multiple grades to a student
- Validate student and subject names
- Validate scores between `0` and `20`
- Validate coefficients greater than `0`
- Calculate weighted averages
- Determine admission status
- Assign academic mentions automatically
- Generate complete student reports
- Automated tests with RSpec
- Code-quality checks with RuboCop
- RBS type signatures

## Project status

Version `0.1.0` is officially published on RubyGems.

- All RSpec tests pass
- The project passes RuboCop checks
- Ruby files use consistent `LF` line endings
- The public package has been installed and tested
- RubyGems releases are protected by multi-factor authentication

## Installation

Install the gem from RubyGems:

```bash
gem install student_grade_manager
```

You can also add it to your application's `Gemfile`:

```ruby
gem "student_grade_manager", "~> 0.1.0"
```

Then run:

```bash
bundle install
```

## Usage

Require the gem:

```ruby
require "student_grade_manager"
```

Create a student:

```ruby
student = StudentGradeManager::Student.new(name: "Manda")
```

Add grades:

```ruby
student.add_grade(
  subject: "Ruby",
  score: 16,
  coefficient: 3
)

student.add_grade(
  subject: "Algorithms",
  score: 14,
  coefficient: 2
)
```

Calculate the weighted average:

```ruby
puts student.average
# 15.2
```

Check the admission status:

```ruby
puts student.admitted?
# true
```

Get the academic mention:

```ruby
puts student.mention
# Bien
```

Generate the complete report:

```ruby
puts student.report
```

Expected output:

```text
Étudiant : Manda
Notes :
Ruby : 16/20 — coefficient 3
Algorithms : 14/20 — coefficient 2
Moyenne : 15.2
Statut : Admis
Mention : Bien
```

The generated report currently uses French labels.

## Business rules

- Student names must be non-empty strings.
- Subject names must be non-empty strings.
- Leading and trailing spaces are removed from names.
- Scores must be numeric values between `0` and `20`.
- Coefficients must be numeric values greater than `0`.
- The average is weighted according to the coefficients.
- The weighted average is rounded to two decimal places.
- A student is admitted when the average is greater than or equal to `10`.
- A student without grades has an average of `0.0` and is not admitted.

### Academic mentions

| Weighted average | Returned mention |
| ---------------- | ---------------- |
| No grades        | `Non évalué`     |
| Below 10         | `Ajourné`        |
| From 10 to 11.99 | `Passable`       |
| From 12 to 13.99 | `Assez bien`     |
| From 14 to 15.99 | `Bien`           |
| From 16 to 17.99 | `Très bien`      |
| From 18 to 20    | `Excellent`      |

## Running the example

Install the dependencies:

```bash
bundle install
```

Then run:

```bash
bundle exec ruby -Ilib examples/basic_usage.rb
```

## Development

Set up the development environment:

```bash
ruby bin/setup
```

Run the tests:

```bash
bundle exec rspec
```

Run the code-quality checks:

```bash
bundle exec rubocop
```

Open the Ruby console:

```bash
bundle exec ruby bin/console
```

Run the automated tasks:

```bash
bundle exec rake
```

## Local build

Build the gem:

```bash
gem build student_grade_manager.gemspec
```

Install the generated package:

```bash
gem install ./student_grade_manager-0.1.0.gem
```

Check the installed version:

```bash
gem list student_grade_manager
```

## Type signatures

RBS signatures are available in:

```text
sig/student_grade_manager.rbs
```

They describe the parameters and return types of the public API.

## Links

- [Version 0.1.0 on GitHub](https://github.com/MANDANIAINAPRECIEUX/student_grade_manager/releases/tag/v0.1.0)
- [Gem on RubyGems](https://rubygems.org/gems/student_grade_manager)
- [Changelog](CHANGELOG.md)
- [Code of Conduct](CODE_OF_CONDUCT.md)
- [MIT License](LICENSE.txt)

## Contributing

Bug reports and improvement proposals are welcome on the [GitHub repository](https://github.com/MANDANIAINAPRECIEUX/student_grade_manager).

Contributors must follow the project's [Code of Conduct](CODE_OF_CONDUCT.md).

## License

StudentGradeManager is available as open-source software under the terms of the [MIT License](LICENSE.txt).
