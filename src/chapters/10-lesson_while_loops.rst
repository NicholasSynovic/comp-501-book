Lesson 10: While Loops
======================

**Owner:** `Luce, Jason <https://www.luce.com>`__

**Reviewer:** `Al Shaikhli, Ihab <https://www.ala.shaikhli.com>`__

Overview and Introduction
-------------------------

In earlier lessons, students learned how *if* statements allow a program
to make a single decision based on a condition; in this lesson, they
extend that understanding by exploring how while loops use those same
kinds of conditions to repeat actions until the condition changes. Just
as people repeat everyday behaviors, like pressing “snooze” until it’s
time to wake up, programs often need to keep performing a task while
something remains true, such as waiting for correct input or counting
until a target is reached. This lesson introduces ‘while loop’ syntax,
shows how conditions control repetition, and prepares students for the
next lesson on ‘*for* loops’ by reinforcing the idea that
condition-based logic is the foundation of all iterative behavior in
Python.

Learning Objectives
-------------------

By the end of this lesson, students will be able to **identify** and
**explain** the syntax and structure of a while loop, **describe** how
loop conditions govern iterative control flow, **detect** and
**correct** common causes of infinite loops, and **apply** while loops
to **construct** solutions for simple input-based or counting problems.
These objectives build directly upon students’ prior knowledge of
conditional statements and prepare them to **distinguish** between
‘while loops’ and ‘for loops’ in the next lesson.

--------------

Prerequisites
-------------

Students will need access to a computer with Python installed (or an
environment to run Python code), along with a projector or whiteboard
for instructor demonstrations. Worksheets or digital exercises should be
provided for in-class practice, and optional use of online IDEs such as
Replit or Jupyter Notebook can enhance engagement. The lesson can be
conducted both in-person and remotely with minimal modification.

--------------

Lesson Outline
~~~~~~~~~~~~~~

1. Warm-Up (5 minutes)
^^^^^^^^^^^^^^^^^^^^^^

Begin the session by asking students to consider how a program could
repeat an action until a certain condition is met. Possible real world
that example could be: *Have you ever found yourself pressing snooze on
your alarm until it’s time to wake up? How might we tell a computer to
do that?* “Connect this question to their previous understanding of
conditional statements, emphasizing that if statements execute once
while loops allow repetition. Explain that a while loop executes a block
of code repeatedly as long as its condition remains true. Mention that
this lesson introduces conditional repetition, while the next lesson
will explore for loops, which handle repetition over sequences or
ranges.

--------------

2. While Loop Syntax (10 minutes)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Introduce the syntax of a while loop and explain that the condition is
evaluated before each iteration. Highlight that the indented code block
inside the loop runs as long as the condition evaluates to ‘True’. Use
the following example to demonstrate:

**Example:**

.. code:: python

   count = 1
   while count <= 5:
       print("Count is:", count)
       count += 1

**Discussion:**

Explain how the variable count controls when the loop stops. Ask
students to predict what will happen if the increment statement count +=
1 is removed, guiding them toward understanding the concept of infinite
loops. Visualize the flow of logic with a diagram showing the repeated
evaluation of the condition and the loop body execution.

3. Loop Conditions (10 minutes)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Describe how loop conditions determine whether the loop continues or
ends. Explain that conditions may involve numeric comparisons, Boolean
values, or logical operators. Demonstrate this using a simple countdown
example:

.. code:: python

   x = 10
   while x > 0:
       print(x)
       x -= 1

Discuss how the loop terminates once the variable x becomes zero,
emphasizing that every while loop must include a conditional that is
initial true and a mechanism to eventually make the condition false.
Introduce three common loop patterns: counter-controlled loops (see
above), infinite loops, and sentinel loops (see below). Conclude this
section with a short exercise where students write a loop that prints
numbers from one to ten followed by the message ‘Done!’

4. Infinite Loops (10 minutes)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Explain that infinite loops occur when the condition never becomes
false. Show examples that illustrate both intentional and unintentional
infinite loops:

**Example:**

.. code:: python

   while True:
       print("This will run forever!");

or

.. code:: python

   x = 5
   while x > 0:
       print(x)
   # forgot to decrease x

Discuss why each loop behaves the way it does and demonstrate how to
stop an infinite loop using Ctrl + C or a break statement. Explain that
infinite loops are generally mistakes for beginners but are used
deliberately in programs that must constantly monitor or respond to
events, such as servers or graphical user interfaces. Encourage students
to experiment by creating an infinite loop, observing its behavior, and
then correcting it. A short partner debugging activity can make this
exercise more interactive and reinforce learning through collaboration.

--------------

5. Guided Practice (10 minutes)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Provide a hands-on exercise where students create a password-checking
loop. The loop should continue asking for input until the correct
password, ‘secret,’ is entered:

.. code:: python

   password = ""
   while password != "secret":
       password = input("Enter password: ")
   print("Access granted!")

Once students have implemented this example, discuss the condition that
controls the loop, the event that causes it to stop, and possible ways
it could malfunction. To extend the exercise, challenge students to
write a loop that continuously sums numbers entered by the user until
they type ‘done.’ This builds on their understanding of termination
conditions and input validation.

6. Reflection and Assessment(5 minutes)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Wrap up the lesson by asking students a few conceptual and coding
questions: What is the purpose of a while loop? What determines when a
loop stops running? What can cause a loop to become infinite? As a final
quick task, have them write a loop that prints all even numbers between
two and ten. Conclude with a reflective prompt asking students to
describe one common cause of infinite loops and how they can prevent
them.

--------------

Homework / Extension
~~~~~~~~~~~~~~~~~~~~

Assign a short project in which students modify the password-checking
loop to allow only three login attempts before denying access. Ask them
to research the differences between while loops and for loops and
summarize their findings in a brief paragraph. This task reinforces the
distinction between condition-based and range-based iteration while
preparing students for the next lesson.

--------------

Evaluation
~~~~~~~~~~

Student performance can be assessed based on syntax accuracy, logical
loop control, debugging skills, and reflection quality. A rubric can be
used to score performance across three levels: excellent (correct syntax
and complete understanding), satisfactory (minor issues but functional
code), and needs improvement (incorrect or incomplete solutions).
Reflection responses should demonstrate clear reasoning and an
understanding of common pitfalls.

Summary and Next Steps
~~~~~~~~~~~~~~~~~~~~~~

This lesson introduced students to while loops, focusing on how
conditions control repetition and how to prevent infinite loops. Through
guided coding and debugging exercises, students practiced writing
functional loops for counting and input-based tasks. Next, they will
build on this foundation by learning for loops and comparing
condition-based versus sequence-based iteration.

--------------

(✔ Luce, Jason) Please check the review below and let me know if you
have any questions. Thank you.

Review of “While Loops” Lesson Content (Intro to OOP with Python)
=================================================================

After a thorough review of the content on “While Loops”, I’ve identified
several areas to correct and enhance. The goal is to make the lesson
clear, engaging, and perfectly aligned with the learning objectives for
beginner Python students. Below are high-level improvement themes,
followed by a detailed table of section-by-section recommendations.

--------------

Code Clarity & Accuracy
-----------------------

Ensure all code examples are correctly formatted (proper syntax,
indentation, symbols) and accompanied by clear explanations or expected
output. This helps avoid confusion and solidifies understanding.

--------------

Engagement & Examples
~~~~~~~~~~~~~~~~~~~~~

Introduce relatable examples or analogies (real-life scenarios, simple
demos) and interactive tasks. Engaging context and visuals (like
flowcharts) can make abstract concepts like loops more accessible to
beginners.

--------------

Detailed Recommendations by Section
-----------------------------------

The table below outlines specific suggestions for each section of the
lesson.

Each recommendation is categorized as an addition, removal, or edit,
with details and reasons for the change. These changes aim to correct
any errors and enhance the clarity and pedagogical effectiveness of the
lesson.

+-----------------------+-----------------------+-------------------------------------------------------------------------------------------------------------+
| Section Title/Number  | Suggested Change      | Details                                                                                                     |
+=======================+=======================+=============================================================================================================+
| Materials Needed      | Edit                  | Rephrase “Computers with Python installed (or an environment to run Python code)” for clarity.              |
+-----------------------+-----------------------+-------------------------------------------------------------------------------------------------------------+
| 1. Warm-Up            | Add                   | Introduce a real-world analogy with a question. For example: “Have you ever kept doing something until a    |
|                       |                       | condition was met, like pressing snooze until it’s time to wake up? How might we tell a computer to do      |
|                       |                       | that?”                                                                                                      |
+-----------------------+-----------------------+-------------------------------------------------------------------------------------------------------------+
| 1. Warm-Up            | Edit                  | Emphasize the connection to conditional statements with an analogy. For instance: “Just like an if          |
|                       |                       | statement runs code when a condition is true, a while loop runs code many times as long as the condition    |
|                       |                       | remains true.”                                                                                              |
+-----------------------+-----------------------+-------------------------------------------------------------------------------------------------------------+
| 2. While Loop Syntax  | Edit                  | Format the code example properly and add a clear explanation.                                               |
+-----------------------+-----------------------+-------------------------------------------------------------------------------------------------------------+
| 2. While Loop Syntax  | Add                   | After introducing the syntax, explicitly state the key Python syntax rules: “Remember the colon after the   |
|                       |                       | condition, and the indented code block that will repeat.”                                                   |
+-----------------------+-----------------------+-------------------------------------------------------------------------------------------------------------+
| 2. While Loop Syntax  | Add                   | Show the expected output after the code example. It will print: Count is: 1, Count is: 2, … Count is: 5,    |
|                       |                       | and then the loop stops (for count example).                                                                |
+-----------------------+-----------------------+-------------------------------------------------------------------------------------------------------------+
| 2. While Loop Syntax  | Add                   | Note that if the condition is false initially, the loop body will not run at all. (For example, if count    |
|                       |                       | started at 6, the loop would not run).                                                                      |
+-----------------------+-----------------------+-------------------------------------------------------------------------------------------------------------+
| 2. While Loop Syntax  | Add                   | Consider using a simple flowchart (diagram showing the decision point, entering the loop body, and going    |
|                       |                       | back to re-check the condition) drawn on a whiteboard to visualize the flow of the loop.                    |
+-----------------------+-----------------------+-------------------------------------------------------------------------------------------------------------+
| 3. Loop Conditions    | Add                   | Provide an example of a non-numeric condition, like a boolean flag. “Imagine a boolean variable running =   |
|                       |                       | True. The loop could run until running becomes false.” Also mention sentinel loops like “while user_input   |
|                       |                       | != ‘quit’:”.                                                                                                |
+-----------------------+-----------------------+-------------------------------------------------------------------------------------------------------------+
| 3. Loop Conditions    | Add                   | In the short exercise (print 1 to 10 then ‘Done!’), include a reminder: “Remember to include a statement    |
|                       |                       | that changes the condition, otherwise the loop will run forever! After printing 10, the loop should stop    |
|                       |                       | and then print ‘Done!’.”                                                                                    |
+-----------------------+-----------------------+-------------------------------------------------------------------------------------------------------------+
| Sections 2 & 3 (While | Merge (optional)      | Flag: Consider merging these two sections into one session titled “Using While Loops”. This combined        |
| Loop Syntax & Loop    |                       | section would introduce the syntax and immediately show different examples and a short exercise. This might |
| Conditions)           |                       | better use the time if the total minutes needed is tight.                                                   |
+-----------------------+-----------------------+-------------------------------------------------------------------------------------------------------------+
| 4. Infinite Loops     | Edit                  | Clarify how to stop an unintentional infinite loop. In the example of the forgotten decrement, show how to  |
|                       |                       | interrupt it (e.g., pressing Ctrl+C in the console or using the stop button in an IDE). Alternatively, show |
|                       |                       | how to modify the code to break out of the loop if needed (using a break statement).                        |
+-----------------------+-----------------------+-------------------------------------------------------------------------------------------------------------+
| 4. Infinite Loops     | Add                   | When discussing infinite loops, add a safety note for the activity where students create an infinite loop.  |
|                       |                       | For instance: “When you run an intentional infinite loop for this activity, remember you can stop it with   |
|                       |                       | Ctrl+C. Don’t worry if it runs for a moment; we expect it to be temporary.”                                 |
+-----------------------+-----------------------+-------------------------------------------------------------------------------------------------------------+
| 5. Guided Practice    | Edit                  | Fix the code formatting for the password example for clarity. The corrected, formatted example is:          |
|                       |                       | ``password = "" while password != "secret": password = input("Enter password: ") print("Access granted!")`` |
+-----------------------+-----------------------+-------------------------------------------------------------------------------------------------------------+
| 5. Guided Practice    | Add                   | Make the password-checking loop more robust by adding user feedback. For example, after a wrong password,   |
|                       |                       | print a message like “Wrong password, try again.” instead of simply re-prompting unconcernedly. This makes  |
|                       |                       | the loop’s iteration clearer to the user.                                                                   |
+-----------------------+-----------------------+-------------------------------------------------------------------------------------------------------------+
| 5. Guided Practice    | Add                   | Connect the password example back to the concept of infinite loops, noting that if we forgot to update the  |
|                       |                       | password variable, it would be an infinite loop (keeps asking). Also, if we used ``input`` but weren’t      |
|                       |                       | assigning to ``password``, the variable wouldn’t change and the loop would run forever. This is a common    |
|                       |                       | mistake.                                                                                                    |
+-----------------------+-----------------------+-------------------------------------------------------------------------------------------------------------+
| 6. Assessment / Exit  | Add                   | Include a question that requires tracing a loop’s execution by hand. For example: “What is the final value  |
| Ticket                |                       | of ``count`` after this loop runs?” This checks understanding beyond just writing syntax.                   |
+-----------------------+-----------------------+-------------------------------------------------------------------------------------------------------------+
| 6. Assessment / Exit  | Edit                  | Fine-tune the existing reflection question for clarity. Instead of “What can cause a loop to become         |
| Ticket                |                       | infinite?”, phrase it as: “How can a loop become infinite? Give an example.” (or ask for two causes).       |
+-----------------------+-----------------------+-------------------------------------------------------------------------------------------------------------+
| 6. Assessment / Exit  | Add                   | Provide a hint for the “print even numbers” task if needed: “To get even numbers, you may need to increase  |
| Ticket                |                       | your counter by 2 each time the loop runs (or use a condition and an if statement inside the loop).”        |
+-----------------------+-----------------------+-------------------------------------------------------------------------------------------------------------+
| 7. Homework /         | Add                   | Encourage students to be ready to share their findings on the differences between “while” and “for” loops   |
| Extension             |                       | at the start of the next class, to facilitate discussion. For instance, they might come with a prepared     |
|                       |                       | example of when a while loop is more appropriate than a for loop.                                           |
+-----------------------+-----------------------+-------------------------------------------------------------------------------------------------------------+
| New Section           | Add                   | If time permits, consider a very short section on Loop Control Statements, covering ``break`` and           |
| (Optional):           |                       | ``continue``. Demonstrate ``break`` for exiting a loop early (e.g., in a ``while True`` loop, ``break``     |
| Break/Continue        |                       | when a condition is met). You could mention ``continue`` (skipping to the next iteration) with a simple     |
|                       |                       | example, although this might be more suited for a later lesson.                                             |
+-----------------------+-----------------------+-------------------------------------------------------------------------------------------------------------+

**Note:** No sections are recommended for removal. Each existing section
has a distinct purpose in the flow of the lesson. The suggestions above
aim to enhance the current structure rather than eliminate parts of it.
Merging Sections 2 and 3 is a stylistic choice, the content can work
well either combined or separate, depending on the pacing you prefer.

By implementing these changes, the lesson on “While Loops” will be more
robust and accessible. The content will not only be free of errors but
also more engaging, with clear explanations and strong reinforcement of
key concepts. These improvements will help beginners build confidence as
they learn to use ``while`` loops, ensuring they achieve the learning
objectives and are well-prepared for subsequent topics in the course.
