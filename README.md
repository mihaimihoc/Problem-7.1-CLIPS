# 👨‍👩‍👦 Family Relationship Expert System (CLIPS)

This project is a basic expert system built using **CLIPS**, designed to represent and reason about family relationships. It defines templates and facts for people, their genders, roles, and parental relationships.

---

## 📚 Overview

The system models a small family using three main templates:

- `person`: Describes individuals with name, gender, and roles (e.g., father, son).
- `parent-child`: Defines parent-to-child relationships (e.g., Tom is John's father).
- `parents`: Groups both parents of a child into a single fact for easier reasoning.

Example facts are included for a sample family:
- 👨 Tom (male, father)
- 👩 Susan (female, mother)
- 👦 John (male, son)

---

## 📁 Files

- `family.clp`: Main CLIPS file containing all `deftemplate` and `deffacts` declarations.

---

## 🧠 How It Works

The system:
- Stores individuals as `person` facts with attributes like name, gender, and role.
- Defines parent-child relationships using `parent-child` facts.
- Combines both parents of a child using the `parents` fact for convenience.

This setup can be extended with rules to:
- Infer missing roles based on relationships
- Validate consistency in family structure
- Generate queries like “Who is John's mother?”

---

## 🚀 Getting Started

1. Install [CLIPS](http://www.clipsrules.net/)
2. Load the `family.clp` file into the CLIPS environment:
   ```clips
   (load "family.clp")
   (reset)
   (facts)
