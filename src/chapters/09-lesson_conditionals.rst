=======================
Lesson 9: Conditionals
=======================

**Reviewer:** Mujtaba - The only comment I have is if we could move the
conditionals before the function section and could be tough as part the
first basic sections after building blocks. I see there are some other
sections that are more advanced than this topic in previous chapters.
Next, I guess that we can add the switch structure here too as part of
the conditions.

**Owner:** (PE Pautsch, Erik)

--------------

Learning Objectives
-------------------

By the end of this lesson, students will be able to:

- Write and explain ``if``, ``elif``, and ``else`` statements in Python.
- Form and evaluate Boolean expressions using comparison and logical
  operators.
- Use truthiness (empty vs. non-empty values) appropriately in
  conditions.
- Combine conditions with ``and``, ``or``, and ``not``, understanding
  short-circuit evaluation and operator precedence.
- Choose clear condition order and structure (flat ``elif`` chains
  vs. nested ``if``\ s) to express intent.
- Avoid common pitfalls (= **vs** ==, ``is vs`` ==, indentation, and
  boundary conditions).
- Test branches with representative inputs and explain why each branch
  runs.

--------------

Materials Needed
----------------

Computers with Python installed (or an online environment like
Replit/Jupyter), a projector or shared screen for demos, and a set of
short practice prompts. Optional: printed “truthiness” reference card
(lists common truthy/falsy values) and a small “operator precedence”
handout.

Lesson Outline
==============

1) Warm-Up: Decisions, Decisions
--------------------------------

Start with a relatable scenario and collect a few rules from students.
For example: **movie ticket pricing** or **shipping costs**.

- Example prompt: “Children under 12 pay $8, adults pay $12, seniors
  (65+) pay $9, and students with ID get $10 unless it’s Tuesday, then
  everyone pays $7.”

- Ask: *What information do we need? How would we check each rule? Which
  rule should run first if several are true?* Use this to motivate the
  need for **Boolean expressions** and **ordered branches**.

2) Boolean Expressions: The Building Blocks
-------------------------------------------

Define a Boolean expression as something that evaluates to ``True`` or
``False``.

- **Comparison operators**: ==, !=, <, >, <=, >=
- **Logical operators**: and, or, not
- **Membership**: in, not in (e.g., “@” in email)
- **Identity**: is, is not (use for singletons like ``None``, not for
  general value equality)

**Truthiness** in Python: these are treated as ``False`` in conditions —
``0``, ``0.0``, ``'', [], {}, set()``, ``None``. Most other objects are
``True``.

**Quick demo:**

.. code:: python

   age = 17
   has_id = True
   is_student = True

   print(age >= 18 and has_id) # False
   print(is_student or age < 12) # True
   print(not (age >= 18)) # True
   print("@" in "user@example.com") # True

Explain short-circuiting: A and B doesn’t evaluate B if A is False; A or
B doesn’t evaluate B if A is True. This allows safe patterns like:

.. code:: python

   user = None

   if user and user.is_admin():
       print("Welcome, admin!") # safe: user.is_admin() only called if user is truthy

3) if Statement Syntax
----------------------

Introduce the structure and stress indentation and the colon:

.. code:: python

   score = 92

   if score >= 90:
       print("A")

Notes: - The block runs only if the condition is True. - If the
condition is False initially, the block does not run at all.

4) elif and else: Ordering and Exclusivity
------------------------------------------

Use elif for mutually exclusive alternatives and else for a final
catch-all.

.. code:: python

   score = 86

   if score >= 90:
       grade = "A"
   elif score >= 80:
       grade = "B"
   elif score >= 70:
       grade = "C"
   elif score >= 60:
       grade = "D"
   else:
       grade = "F"

   print(grade)

Key ideas:

- Conditions are checked top-to-bottom; the first ``True`` branch runs,
  then the chain stops.
- Choose boundaries carefully to avoid gaps or overlaps. (Here each
  branch is ``>=`` and they’re descending.)
- You can chain comparisons: 18 <= age < 65.

**Nested vs. flat:** Prefer a flat ``elif`` chain over deep nesting when
branches are exclusive. Nesting is useful when one check “guards” a
group of related checks.

5) Combining Conditions Clearly
-------------------------------

Show how parentheses improve readability and avoid precedence mistakes (
``not > and > or``).

.. code:: python

   age = 19
   country = "US"
   has_consent = False

   if (age >= 18 and country == "US") or has_consent:
       print("Allowed")

Encourage students to read conditions aloud: “(age at least 18 AND
country is US) OR has consent.” If that sounds confusing, refactor or
split into variables:

.. code:: python

   adult_us = age >= 18 and country == "US"
   allowed = adult_us or has_consent

   if allowed:
       ...

6) Common Pitfalls & How to Avoid Them
--------------------------------------

- ☐ = vs ==; [ ] = assigns, == compares. if x = 3: is a syntax error;
  use if x == 3: .
- **is vs ==**: Use is for identity (e.g., value is None), == for value
  equality.
- **Dangling else**: Indentation controls which if an else pairs with—be
  precise.
- **Precedence surprises**: Parenthesize complex conditions. Example:
  not a or b and c is not a or (b and c).
- **Boundary errors**: Define inclusive/exclusive edges (e.g., >= 90 vs
  > 90). Add tests at boundaries (89, 90, 100).
- **Floating-point comparisons**: Avoid direct equality with floats;
  compare with a tolerance if needed.

7) Guided Practice
------------------

Provide a few progressively richer tasks. Encourage students to write
tests that hit every branch.

A. **Admission price** Inputs: age, is_student, is_senior, Rules: under
$12 → $8; $12-64 → $12; $65+ → $9; students pay $10 unless Tuesday
(everyone $7). Implement as a clear if /elif chain; verify with boundary
ages 12 and 65.

B. **Email subject filter** If the subject contains any of (“free”,
“win”, “prize”) (case-insensitive), mark as “spam”; else “okay”. Use in
and lower() ; stress readability with helper variables like
has_bait_word.

C. **Grade comment** Given score, print one message: “Excellent” (90+),
“Good” (80–89), “Keep going” (70–79), “Needs support” (<70). Ensure
exactly one message prints.

8) Quick Concept Checks
-----------------------

Short verbal or written checks to reinforce key ideas:

- Evaluate: not True or False and True (answer: False). Ask students to
  parenthesize it according to precedence.
- Why does this print “Hi”?

.. code:: python

   name = "" # empty string is falsy

   if not name:
       print("Hi")

- What’s wrong with this?

.. code:: python

   x = 5

   if x = 5:
       print("equal")

- When would you use ``is`` instead of ==?

9) Assessment / Exit Ticket
---------------------------

Give one small problem that requires ``if/elif/else`` and one that
probes understanding of truthiness.

**Problem 1 (branching):** Write a function ``classify_temp(t)`` that
returns “cold” for t < 50, “mild” for 50 <= t < 70, “warm” for 70 <= t <
85, and “hot” for t >= 85.

**Problem 2 (truthiness):** Explain what each condition checks and
whether it’s a good idea:

.. code:: python

   files = []

   if files: # good: empty list is falsy
       print("We have files")

   text = ""
   if text: # good? discuss: whitespace string is truthy; maybe strip first
       print("Has text")

Homework / Extension
--------------------

Choose one:

- **Leap year checker:** Write ``is_leap_year(year)`` using conditionals
  (divisible by 4, not by 100 unless by 400). Add tests for 1900, 2000,
  2024.
- **Triangle type:** Given three side lengths, print
  ``"equilateral", "isosceles", "scalene", or "invalid"`` (triangle
  inequality). Emphasize ordered checks and clear error handling.
- **Password strength (basic):** Classify a password as
  ``"weak", "okay", or "strong"`` based on length and presence of
  digits/special characters. Use helper Booleans like
  ``has_digit = any(ch.isdigit() for ch in pwd).``

Evaluation
==========

Assess for:

- **Correctness**: ``if/elif/else`` structure, proper boundaries, and
  one-and-only-one branch firing where intended.
- **Clarity**: readable conditions, good naming, and use of parentheses
  where helpful.
- **Boolean fluency**: correct use of comparison/logical operators and
  truthiness.
- **Testing**: evidence of boundary tests and short, targeted examples
  that hit each branch.

Rubric (three levels):
----------------------

- **Excellent**: Accurate logic, clean structure, correct operator use,
  thoughtful tests that cover edge cases.
- **Satisfactory**: Mostly correct with minor boundary or readability
  issues; tests cover most branches.
- **Needs Improvement**: Logical gaps/overlaps, misuse of operators,
  unclear structure, or missing edge-case tests.

Optional Enrichment
===================

- Show Python’s pattern matching (``match/case``) briefly as an
  alternative in 3.10+, and discuss when ``if/elif`` remains more
  appropriate.
- Demonstrate guard-clause style in functions (early returns) to keep
  conditionals flat and readable.
- Refactor a nested conditional into flat, well-named Booleans to
  illustrate readability gains.
