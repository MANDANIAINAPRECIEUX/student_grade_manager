# StudentGradeManager

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
- Signatures de types avec RBS

## État du projet

La version `0.1.0` est officiellement publiée sur RubyGems.

- Tous les tests RSpec passent avec succès
- Le projet passe entièrement les vérifications RuboCop
- Les fichiers Ruby utilisent des fins de ligne `LF`
- La gem publique a été installée et testée avec succès
- L’authentification multifacteur protège les futures publications

## Installation

Installez directement la gem depuis RubyGems :

```bash
gem install student_grade_manager
```

Vous pouvez également l’ajouter au `Gemfile` de votre application :

```ruby
gem "student_grade_manager", "~> 0.1.0"
```

Puis installez les dépendances :

```bash
bundle install
```

## Utilisation

Chargez la gem :

```ruby
require "student_grade_manager"
```

### Créer un étudiant

```ruby
student = StudentGradeManager::Student.new(name: "Mirana")
```

### Ajouter des notes

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

### Calculer la moyenne pondérée

```ruby
puts student.average
# 15.2
```

### Vérifier l’admission

```ruby
puts student.admitted?
# true
```

### Obtenir la mention académique

```ruby
puts student.mention
# Bien
```

### Générer le rapport complet

```ruby
puts student.report
```

Résultat attendu :

```text
Étudiant : Mirana
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
- Une note doit être une valeur numérique comprise entre `0` et `20`.
- Un coefficient doit être numérique et strictement supérieur à `0`.
- La moyenne est pondérée selon les coefficients.
- La moyenne est arrondie à deux décimales.
- Un étudiant est admis lorsque sa moyenne est supérieure ou égale à `10`.
- Un étudiant sans note possède une moyenne de `0.0`.
- Un étudiant sans note n’est pas considéré comme admis.

### Mentions académiques

| Moyenne pondérée | Mention retournée |
| ---------------- | ----------------- |
| Aucune note      | `Non évalué`      |
| Inférieure à 10  | `Ajourné`         |
| De 10 à 11,99    | `Passable`        |
| De 12 à 13,99    | `Assez bien`      |
| De 14 à 15,99    | `Bien`            |
| De 16 à 17,99    | `Très bien`       |
| De 18 à 20       | `Excellent`       |

## Exécuter l’exemple

Clonez le dépôt, puis installez les dépendances :

```bash
bundle install
```

Exécutez ensuite l’exemple complet :

```bash
bundle exec ruby -Ilib examples/basic_usage.rb
```

L’exemple crée un étudiant, ajoute deux notes, calcule sa moyenne pondérée et affiche son rapport complet.

## Développement

Après avoir cloné le dépôt, préparez l’environnement :

```bash
ruby bin/setup
```

Lancez tous les tests :

```bash
bundle exec rspec
```

Vérifiez la qualité et le style du code :

```bash
bundle exec rubocop
```

Lancez la console Ruby avec la gem déjà chargée :

```bash
bundle exec ruby bin/console
```

Exécutez toutes les tâches automatisées :

```bash
bundle exec rake
```

## Construction et installation locales

Construisez la gem depuis la racine du projet :

```bash
gem build student_grade_manager.gemspec
```

Cette commande génère le fichier :

```text
student_grade_manager-0.1.0.gem
```

Installez le paquet localement :

```bash
gem install ./student_grade_manager-0.1.0.gem
```

Vérifiez la version installée :

```bash
gem list student_grade_manager
```

## Signatures de types

Les signatures RBS sont disponibles dans le fichier :

```text
sig/student_grade_manager.rbs
```

Elles documentent les paramètres et les types de retour de l’API publique des classes `Grade` et `Student`.

## Structure principale

```text
student_grade_manager/
├── examples/
│   └── basic_usage.rb
├── lib/
│   ├── student_grade_manager/
│   │   ├── grade.rb
│   │   ├── student.rb
│   │   └── version.rb
│   └── student_grade_manager.rb
├── sig/
│   └── student_grade_manager.rbs
├── spec/
│   ├── grade_spec.rb
│   ├── student_grade_manager_spec.rb
│   ├── student_spec.rb
│   └── spec_helper.rb
├── CHANGELOG.md
├── LICENSE.txt
├── README.md
└── student_grade_manager.gemspec
```

## Versions publiées

- [Version 0.1.0 sur GitHub](https://github.com/MANDANIAINAPRECIEUX/student_grade_manager/releases/tag/v0.1.0) — Première version publique
- [Gem sur RubyGems](https://rubygems.org/gems/student_grade_manager)

L’historique complet des modifications est disponible dans le fichier [CHANGELOG.md](CHANGELOG.md).

## Contribution

Les signalements de problèmes et les propositions d’amélioration sont les bienvenus sur le [dépôt GitHub](https://github.com/MANDANIAINAPRECIEUX/student_grade_manager).

Les contributeurs doivent respecter le [Code de conduite](CODE_OF_CONDUCT.md) du projet.

## Licence

StudentGradeManager est distribué comme logiciel open source selon les conditions de la [licence MIT](LICENSE.txt).
