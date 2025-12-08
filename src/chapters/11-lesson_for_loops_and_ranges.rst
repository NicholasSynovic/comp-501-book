Lesson 11: For Loops & Ranges
=============================

**Owner:** `Luce, Jason <https://www.luce.com>`__

**Reviewer:** `Saban, Michael <https://www.saban.com>`__

Overview & Introduction
-----------------------

This lesson introduces the ‘for loop’, a programming structure that
repeats a block of code for each item in a known sequence or range. In
the previous lesson, students used ‘while loops’ to repeat actions as
long as a condition remained true, which is ideal when the stopping
point depends on changing program state. The ‘for loop’, by contrast,
provides a simpler and more predictable approach when the number of
repetitions, or the data to iterate over, is known ahead of time. By
exploring how Python’s ``range()`` function generates controlled
sequences, students will learn when a ‘for loop’ is the more appropriate
choice and how it builds on their earlier understanding of
condition-driven repetition.

Learning Objectives
-------------------

By the end of this 50-minute class, students will be able to
**identify** and explain the syntax and structure of a for loop, **use**
the ``range()`` function to **control** repetition, **iterate** over
lists, strings, and tuples to **process** each element, and **compare**
for loops and while loops to **determine** which construct is most
appropriate for a given problem. Each objective is directly assessed
through in-class coding activities and the exit ticket.

--------------

Prerequisites
-------------

Students should already understand variables, lists, and basic while
loops. Each student needs a computer with Python installed (Thonny,
IDLE, or Replit). The instructor should have a projector or shared
screen and handouts with short practice prompts. All tasks can be done
in person or remotely.

Lesson Outline
==============

1. Warm-Up (5 minutes)
----------------------

Ask students:

Start with a real-world prompt such as, “How could a computer print
every student’s name in the class automatically?” Connect this to the
prior lesson’s while loop and emphasize that for loops remove the need
for manual counters. State that this lesson will show how to repeat
tasks for known amounts of data

--------------

2. For Loop Syntax (10 minutes)
-------------------------------

**Concept Explanation:**

A **for** loop lets you repeat a block of code for every item in a
sequence or for a specific number of iterations.

**Syntax:**

::

   for *variable* in *sequence*:

**Example:**

.. code:: python

   for i in [1, 2, 3]:
       print("Value of i:", i)

**Discussion:**

Explain that the loop variable takes each value from the sequence and
that indentation defines the block. Briefly show a diagram of the
iteration cycle and demonstrate an indentation error to reinforce syntax
rules. Keep discussion short but interactive—ask what happens if
indentation is removed.

--------------

3. The Range Function (15 minutes)
----------------------------------

**Concept Explanation:**

range() generates a sequence of numbers — often used with for loops when
the number of repetitions is known.

**Examples:**

.. code:: python

   for i in range(5):
       print(i)    # 0, 1, 2, 3, 4

.. code:: python

   for i in range(2, 6):
       print(i)    # 2, 3, 4, 5

.. code:: python

   for i in range(10, 0, -2):
       print(i)    # 10, 8, 6, 4, 2

**Activity:**

Ask students to predict outputs before execution. Clarify that range()
returns a range object, not a list, by printing both range(5) and
list(range(5)). Explain that Python’s \_range() follows a half-open
interval convention, also known as an open-ended or open-closed range,
which means it includes the starting value but excludes the ending
value. For example, range(2, 6) produces [2, 3, 4, 5] but does not
include 6 . Conclude with a quick edge-case demo, range(5, 5), to
illustrate empty ranges.

--------------

4. Iterating Over Sequences (20 minutes)
----------------------------------------

**Concept Explanation:**

for loops aren’t just for numbers — they can iterate over any iterable
sequence such as lists, strings, or tuples.

**Examples:**

**(a) Iterating Over a List**

.. code:: python

   fruits = ["apple", "banana", "cherry"]
   for fruit in fruits:
       print(fruit)

**(b) Iterating Over a String**

.. code:: python

   for letter in "hello":
       print(letter)

**(c) Iterating Over a Tuple**

.. code:: python

   coordinates = (3, 5, 7)
   for value in coordinates:
       print(value)

**(d) Using ``range(len(sequence))``**

.. code:: python

   fruits = ["apple", "banana", "cherry"]
   for i in range(len(fruits)):
       print(i, fruits[i])

--------------

5. Guided Practice / Mini-Projects (10 minutes)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Assign two short collaborative coding challenges:

1. Number Squares – Display each number 1–5 and its square.

2. Counting Vowels – Ask the user for a word and count its vowels.

Students should work in pairs, test their code, and explain results to
one another. If time allows, add a quick bonus: “Sum the numbers in [2,
4, 6, 8, 10].”

**Exercise 1:**

Print the square of every number from 1 to 5.

.. code:: python

   for i in range(1, 6):
       print(i, "squared is", i**2)

**Exercise 2:**

Count how many vowels are in a word.

.. code:: python

   word = input("Enter a word: ")
   count = 0
   for letter in word:
       if letter in "aeiou":
           count += 1
   print("Vowels:", count)

**Exercise 3:**

Sum numbers in a list.

.. code:: python

   numbers = [2, 4, 6, 8, 10]
   total = 0
   for n in numbers:
       total += n
   print("Sum:", total)

6. Reflection and Assessment (5 minutes)
----------------------------------------

Lead a short discussion: How does a for loop differ from a while loop?
Ask one or two students to rewrite a for loop as a while loop aloud.
Finish with the exit ticket:

“Write a for loop that prints every other even number from 0 to 10.”
Collect responses or review verbally to verify understanding of
range(start, stop, step).

**Quick Exit Question:**

“Write a ``for`` loop that prints all even numbers from 0 to 10.”

--------------

Optional Homework
-----------------

For reinforcement, assign one small program: Print each letter in a word
along with its position using *range()*.

Optional challenge: use a nested loop to print coordinate pairs ((0
:raw-latex:`\leq `x, y :raw-latex:`\leq 2`)).

--------------

Evaluation
~~~~~~~~~~

Formative assessment occurs through predictions, debugging, and peer
explanations. Summative evaluation is based on the guided practice and
exit question. Students who meet all objectives will demonstrate correct
syntax, logical use of range(), and the ability to adapt the loop to
different sequence types.

--------------

Summary and Next Steps
~~~~~~~~~~~~~~~~~~~~~~

This lesson condensed the fundamentals of the for loop, its syntax, use
of range(), and application to lists, strings, and tuples. Students
should now understand when to apply for loops for known repetitions.
Next class, they will extend this knowledge to practice combining loops
with conditionals.

--------------

📝 Luce, Jason Please see my overall review and detailed
section-by-section suggestions/comments.

**High-level review:**

+------------------------+------------------------------------+-----------------------+
| Category               | Strengths                          | Areas for Improvement |
+========================+====================================+=======================+
| Organization/Alignment | Clear flow from warmup, to         | Could add more        |
|                        | explanation, to examples, to       | explicit connections  |
|                        | practice, to reflection.           | to Lesson 10 (While   |
|                        |                                    | Loops).               |
+------------------------+------------------------------------+-----------------------+
| Learning Objectives    | Concise and relevant to basic      | N/A                   |
|                        | Python concepts                    |                       |
+------------------------+------------------------------------+-----------------------+
| Concept Accuracy       | Explanations and syntax are        | See specific          |
|                        | correct. Examples of range and     | suggestions to expand |
|                        | sequence iteration are accurate    | examples.             |
|                        | and varied.                        |                       |
+------------------------+------------------------------------+-----------------------+
| Pedagogy               | Good flow, promotes                | Pair programming and  |
|                        | reflection/discussion/interaction. | real-world examples   |
|                        | Good mix of prediction/execution.  | could be expanded.    |
|                        | Clear formative vs summative       |                       |
|                        | evaluation.                        |                       |
+------------------------+------------------------------------+-----------------------+
| Materials              | Clear materials and is adaptable.  | Could add a worksheet |
|                        |                                    | or provide code       |
|                        |                                    | snippets for students |
|                        |                                    | to come further,      |
|                        |                                    | reducing typing time. |
+------------------------+------------------------------------+-----------------------+

Per-section suggestions/comments:
---------------------------------

+-----------------------+-----------------------+---------------------------------------------------------------+
| Section/Title         | Suggested Change      | Details                                                       |
+=======================+=======================+===============================================================+
| Materials Needed      | Edit                  | Rephrase “computer with Python …” to “computer with Python    |
|                       |                       | installed”.                                                   |
+-----------------------+-----------------------+---------------------------------------------------------------+
| Warm-up               | Add                   | Add some follow-up questions to deepen the real-world         |
|                       |                       | connection. E.g., “How would a computer do this for a list of |
|                       |                       | 1000 names?”                                                  |
+-----------------------+-----------------------+---------------------------------------------------------------+
| For Loop Syntax       | Add                   | Include a simple diagram or visual representation of the loop |
|                       |                       | iteration process.                                            |
+-----------------------+-----------------------+---------------------------------------------------------------+
| For Loop Syntax       | Add                   | After example, explicitly ask “what happens if we remove the  |
|                       |                       | indentation?”                                                 |
+-----------------------+-----------------------+---------------------------------------------------------------+
| The Range Function    | Add                   | Clarify that ``range()`` returns a range object, not a list,  |
|                       |                       | and demonstrate: ``r = range(5)`` then ``print(r)`` vs        |
|                       |                       | ``print(list(r))``.                                           |
+-----------------------+-----------------------+---------------------------------------------------------------+
| The Range Function    | Add                   | Include an example showing an empty range, e.g.,              |
|                       |                       | ``range(5, 5)``.                                              |
+-----------------------+-----------------------+---------------------------------------------------------------+
| Iterating Over        | Add                   | Might briefly introduce ``enumerate()`` as an advanced        |
| Sequences             |                       | option. For example:                                          |
|                       |                       | ``for index, item in enumerate(fruits): print(index, item)``. |
+-----------------------+-----------------------+---------------------------------------------------------------+
| Iterating Over        | Edit                  | Visually separate the ``range(len(...))`` example to better   |
| Sequences             |                       | highlight the relative complexity compared to directly        |
|                       |                       | iterating over a string or list.                              |
+-----------------------+-----------------------+---------------------------------------------------------------+
| Guided Practice /     | Edit/Add              | Instead of providing full code, jump straight to the prompt.  |
| Mini-Projects         |                       | Let students write the input/code. Using partially finished   |
|                       |                       | templates could help. Students should reason through the code |
|                       |                       | more actively.                                                |
+-----------------------+-----------------------+---------------------------------------------------------------+
