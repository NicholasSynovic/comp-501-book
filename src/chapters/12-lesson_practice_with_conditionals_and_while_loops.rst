====================================================
Lesson 12: Practice with Conditionals & While Loops
====================================================

**Owner:** 💤 Luce, Jason

Overview & Introduction
-----------------------

This lesson provides a focused review and practice session combining two
previously learned concepts: conditional statements and while loops.
Students have already seen how ``if`` statements allow programs to make
decisions and how ``while`` loops enable repeated execution based on a
condition.

The goal of this lesson is to strengthen fluency in using these tools
together to solve practical programming problems. Through guided and
independent exercises, students will learn how conditional logic
interacts with looping structures—particularly how conditions can be
used to start, control, and terminate loops correctly.

By the end of this class, students will be comfortable tracing,
debugging, and writing small interactive programs that rely on both
conditionals and loops.

--------------

Learning Objectives
-------------------

By the end of this 50-minute session, students will be able to construct
interactive programs that combine conditionals and while loops,
**trace** and **debug** programs that contain nested or repeated
conditions, **explain** how loop conditions depend on variable updates
within the loop body, and **apply** conditional logic to **manage** user
input and control repetition. Each objective is directly supported
through guided practice and an end-of-class reflection exercise.

Prerequisites
=============

Students should already be able to write simple ``if/elif/else``
statements and basic ``while`` loops. They should also understand
Boolean operators ( ``and, or, not``) and comparison operators (
``==, <, >=, etc``.).

Each student needs a computer with Python installed (e.g., Thomy, IDLE,
or Replit).

The instructor should prepare a projector or shared screen for code
demonstrations, and provide worksheets or an online notebook for
in-class exercises.

This lesson works equally well in person, hybrid, or remote
environments.

--------------

Lesson Outline
--------------

1. Warm-Up Review (5 minutes)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Ask students:

Begin the class with a short code-reading exercise to reactivate prior
knowledge.

Display a short Python snippet such as:

.. code:: python

   x = 0
   while x < 5:
       if x % 2 == 0:
           print(x, "is even")
       else:
           print(x, "is odd")
       x += 1

Ask students to predict what the code will print and explain why.

Use this as a quick refresher to illustrate that conditions inside loops
are re-evaluated each time through the loop, and that updates to
variables (like ``x += 1``) determine when the loop ends.

Discuss how omitting or incorrectly updating the loop variable could
cause an infinite loop. This conversation reinforces how conditional and
iterative logic work together.

2. Concept Review and Demonstration (10 minutes)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Transition from review to demonstration.

Explain that many real-world programs use conditional loops, meaning
loops that depend on decisions made during runtime.

Walk through an example of input validation, a common pattern combining
both conditionals and while loops:

.. code:: python

   password = ""
   while password != "python":
       password = input("Enter the password: ")
       if password != "python":
           print("Incorrect. Try again.")
   print("Access granted!");

Guide students in reasoning through the logic: the condition
``password != "python"`` keeps the loop running, while the conditional
inside the loop controls the feedback message.

Highlight how nested logic can make programs responsive to user
behavior.

Then, show an edge case—what if the loop condition is written
incorrectly?

.. code:: python

   while password == "python":

This subtle change prevents the loop from running at all.

Use this as an opportunity to discuss debugging strategies and to model
deliberate, step-by-step testing.

3. Guided Coding Practice (15 minutes)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Shift to hands-on participation. Have students write short programs
following the instructor’s verbal prompts. Examples may include:

- **Guess the Number Game (Part 1)** – The computer stores a secret
  number between 1 and 10. The player keeps guessing until they find it,
  with feedback for each attempt.

Example structure:

.. code:: python

   secret = 7
   guess = 0

   while guess != secret:
       guess = int(input("Guess a number between 1 and 10: "))
       if guess < secret:
           print("Too low.")
       elif guess > secret:
           print("Too high.")
   print("You got it!")

Discuss how to ensure the loop condition checks the user’s input
correctly and why indentation and ordering matter.

Encourage students to predict outputs, modify the code to add conditions
(e.g., invalid input handling), and share their results with a partner.

--------------

4. Independent Challenge (10 minutes)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Students now apply what they’ve practiced to solve a new problem
independently.

Challenge prompt:

Write a program that asks the user for a positive number and prints all
the even numbers up to that number. If the user enters a negative value,
ask again until they enter a positive one.

This task combines conditional checking, loop control, and iteration
over a changing variable.

Encourage students to test edge cases—such as entering zero or
non-numeric input—and think about how to modify their code to handle
unexpected inputs gracefully.

--------------

Reflection & Exit Assessment (10 minutes)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

End with a brief discussion and self-assessment. Ask:

- “How did the conditions inside your loop control when it stopped?”
- “What errors or infinite loops did you encounter, and how did you fix
  them?”

Then, assign a short exit task:

Write a while loop that asks the user to enter a number between 1 and 5.
If they enter an invalid number, print an error and ask again. The loop
ends only when they enter a valid number.

This problem directly measures understanding of condition-driven
repetition and validates the core learning objectives.

--------------

6. Evaluation
~~~~~~~~~~~~~

Throughout the session, formative assessment occurs through class
discussion, peer debugging, and instructor observation. Summative
evaluation is based on whether students can write functioning, logically
sound code for the exit problem and describe how their conditions
control loop flow.

--------------

7. Summary and Next Steps
~~~~~~~~~~~~~~~~~~~~~~~~~

This lesson reinforced how conditionals and while loops complement one
another in interactive programs. Students learned to trace logic, handle
user input, and prevent infinite loops through deliberate variable
control.

The next lesson will build on these skills by introducing nested loops
and examining loop patterns, expanding the range of problems students
can solve with iterative logic.
