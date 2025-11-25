Lesson 5: Intro to Functions
============================

**Reviewer:** Synovic, Nicholas SN **Owner:** Bisharat, Arslan BA

Arslan works at the Loyola University Chicago admissions office. Every
day he sends welcome emails to new CS students. He types the same
message over and over. His fingers hurt. He makes typos. There has to be
a better way.

Professor George K. Thiruvathukal walks by and sees Arslan struggling.
He says there is a better way. It is called a function.

What is a Function
------------------

A function is a small piece of code that does one job. You write it
once. Then you use it many times. You do not need to write the same code
again and again.

Built-in Functions Python Already Has
-------------------------------------

Python comes with many functions ready to use. You do not need to create
them. They are already there.

::

   1 print("Hello World")

The print function shows text on the screen. You give it text. It
displays that text.

::

   1 len("Loyola")
   Python
   Python

The len function counts characters in text. You give it “Loyola”. It
gives back 6 because there are 6 letters.

::

   1 int("42")

The int function changes text into a number. You give it “42” as text.
It gives back 42 as a number.

::

   1 str(2025)
   Python
   Python

The str function changes a number into text. You give it 2025 as a
number. It gives back “2025” as text.

::

   1 input("What is your name? ")

The input function asks the user to type something. It waits for them to
type. Then it gives you what they typed.

Making Your First Function
--------------------------

Arslan wants to create a welcome message function. Professor
Thiruvathukal shows him how.

::

   1 def greet():
   2     print("Welcome to Loyola University Chicago CS 
   Program!")
   Python
   Python

The word def tells Python you are making a function. The word greet is
the name of the function. The parentheses come after the name. The colon
tells Python the function is starting. Everything indented underneath is
part of the function.

Now Arslan can use his function.

::

   1 greet()

**Output:**

::

   1 Welcome to Loyola University Chicago CS Program!
   Python
   Python

Arslan is happy. He only wrote the message once. Now he can use it many
times by calling greet().

Adding Parameters to Functions
------------------------------

Arslan realizes every CS student has a different name. He needs to
personalize each message. Professor Thiruvathukal shows him parameters.

A parameter is information you give to a function. The function uses
that information to do its job.

::

   1 def greet(name):
   2     print("Hello,", name, "welcome to Loyola!")
   Python

Now the function expects a name. You put the name inside the parentheses
when you call it.

::

   1 greet("Manuel Sandoval Madrigal")
   2 greet("Nicholas Synovic")
   3 greet("Michael Saban") Python

**Output:**

::

   1 Hello, Manuel Sandoval Madrigal welcome to Loyola!
   2 Hello, Nicholas Synovic welcome to Loyola!
   3 Hello, Michael Saban welcome to Loyola!

Each time Arslan calls the function he gives it a different name. The
function uses that name in the message.

Functions with Multiple Parameters
----------------------------------

Some students are first year CS students. Some are advanced CS students.
Arslan wants to mention that in the message.

::

   1 def greet(name, student_type):
   2     print("Hello,", name, "welcome to Loyola as 
   a", student_type, "student!")
   Python
   Python

Now the function takes two pieces of information. The name comes first.
The student type comes second.

::

   1 greet("Behnaz Eslami", "first year CS")
   2 greet("Matt Hyatt", "advanced CS")

**Output:**

::

   1 Hello, Behnaz Eslami welcome to Loyola as a first ye
   Python
   2 Hello, Matt Hyatt welcome to Loyola as a advanced 
   CS student!
   Python

The order matters. The first thing you give goes to name. The second
thing goes to student_type.

Return Values
-------------

Sometimes you want a function to give you something back. You do not
just want it to print. You want it to calculate something and give you
the answer.

Arslan needs to calculate research grant amounts for CS students. He
creates a function that does the math and returns the result.

::

   1 def calculate_grant(gpa):
   2     if gpa >= 3.8:
   3         return 25000
   4     elif gpa >= 3.5:
   5         return 20000
   6     else:
   7         return 15000

The return statement sends a value back. You can save that value in a
variable.

::

   1 arslan_grant = calculate_grant(3.9)
   2 manuel_grant = calculate_grant(3.6)
   3 nick_grant = calculate_grant(3.4)
   4
   5 print(arslan_grant)
   6 print(manuel_grant)
   7 print(nick_grant)
   Python
   Python

**Output:**

::

   1 25000
   2 20000
   3 15000

Arslan has a 3.9 GPA so he gets 25000 dollars. Manuel has a 3.6 so he
gets 20000. Nick has a 3.4 so he gets 15000.

The Difference Between Print and Return
---------------------------------------

This confuses many beginners. Print shows something on the screen.
Return gives a value back to use later.

::

   1 def add_with_print(x, y):
   2     print(x + y)
   3
   4 def add_with_return(x, y):
   5     return x + y
   Python

Look at the difference when you use them.

::

   1 result1 = add_with_print(5, 3)
   2 print(result1)

**Output:**

::

   1 8
   2 None
   Python
   Python

The function printed 8. But result1 is None because the function did not
return anything.

::

   1 result2 = add_with_return(5, 3)
   2 print(result2)

**Output:**

::

   1 8
   Python

The function returned 8. Now result2 holds that value. You can use it in
other calculations.

::

   1 total = add_with_return(5, 3) + add_with_return(2, 
   2 print(total)

**Output:**

::

   1 14
   Python
   Python

You can use return values in math. You cannot do that with print.

Default Parameters
------------------

Sometimes Arslan does not know the student type yet. He wants the
function to still work. He can set a default value.

::

   1 def greet(name, student_type="CS"):
   2     print("Hello,", name, "welcome as a", 
   student_type, "student!")

If you do not provide student_type the function uses “CS” automatically.

::

   1 greet("Jason Luce", "first year CS")
   2 greet("Ihab Al shaikhli")
   Python
   Python

**Output:**

::

   1 Hello, Jason Luce welcome as a first year CS student
   2 Hello, Ihab Al shaikhli welcome as a CS student!

Ihab did not have a student type specified. The function used “CS” as
the default.

Functions with Lists
--------------------

Arslan has lists of CS student names. He wants to process them with
functions.

::

   1 def print_all_names(names):
   2     for name in names:
   3         print("Hello,", name)
   Python
   Python

He gives the function a list. The function goes through each name and
prints a greeting.

::

   1 students = ["Izzy Moore", "Erik Pautsch", "Mujtaba N
   2 print_all_names(students)

**Output:**

::

   1 Hello, Izzy Moore
   2 Hello, Erik Pautsch
   3 Hello, Mujtaba Nazari
   4 Hello, Michael Saban
   Python
   Python

The function processed the entire list.

Returning Values from Lists
---------------------------

Arslan wants to find the CS student with the highest GPA from a list.

::

   1 def highest_gpa(gpa_list):
   2     if gpa_list:
   3         return max(gpa_list)
   4     else:
   5         return 0

The function checks if the list has anything in it. If it does it
returns the maximum value. If the list is empty it returns 0.

::

   1 gpas = [3.5, 3.8, 3.2, 3.9, 3.1]
   2 top_gpa = highest_gpa(gpas)
   3 print(top_gpa)
   Python
   Python

**Output:**

::

   1 3.9

The function found and returned the highest GPA.

Common Mistakes
---------------

Arslan makes some mistakes while learning. Professor Thiruvathukal helps
him fix them.

Mistake 1: Forgetting parentheses
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

::

   1 greet
   Python
   Python

This does not run the function. It just refers to it. You need
parentheses to run it.

::

   1 greet()

This actually runs the function.

Mistake 2: Forgetting arguments
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

::

   1 def greet(name):
   2     print("Hello,", name)
   3
   4 greet()
   Python
   Python

This causes an error. The function expects a name but you did not give
it one.

::

   1 greet("Nicholas Synovic")

This works because you gave it the name it needs.

Mistake 3: Forgetting to return
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

::

   1 def square(n):
   2     n * n
   Python
   Python

This function calculates n times n but does not return it. The result
disappears.

::

   1 def square(n):
   2     return n * n

Now the function returns the result. You can save it and use it.

Mistake 4: Using the wrong order for arguments
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

::

   1 def divide(a, b):
   2     return a / b
   3
   4 result = divide(10, 2)
   Python
   Python

This gives 5 because 10 divided by 2 is 5.

::

   1 result = divide(2, 10)

This gives 0.2 because 2 divided by 10 is 0.2. The order matters.

A Complete Example
------------------

Arslan puts everything together. He creates a system to process CS
student applications.

::

   1 def process_application(name, gpa, research_area):
   2     print("Processing application for", name)
   3     
   4     grant = calculate_grant(gpa)
   5     print("Research grant amount:", grant)
   6     
   7     if gpa >= 3.5:
   8         status = "Accepted"
   9     else:
   10         status = "Pending Review"
   11     
   12     print("Status:", status)
   13     print("Research Area:", research_area)
   14     print()
   15 return status
   Python
   P th
   Python

Now he processes several applications for the CS students.

::

   1 process_application("Jason Luce", 3.9, "Machine Lea
   2 process_application("Erik Pautsch", 3.7, "Software E
   3 process_application("Mujtaba Nazari", 3.4, "Data 
   Science")

**Output:**

::

   1 Processing application for Jason Luce
   2 Research grant amount: 25000
   3 Status: Accepted
   4 Research Area: Machine Learning
   5
   6 Processing application for Erik Pautsch
   7 Research grant amount: 20000
   8 Status: Accepted
   9 Research Area: Software Engineering
   10
   11 Processing application for Mujtaba Nazari
   12 Research grant amount: 15000
   13 Status: Pending Review
   14 Research Area: Data Science
   Python
   Python

Arslan is happy. He created functions that do all the work. He just
calls them with different student information. His job is much easier
now.

Practice Problem
----------------

Now you try. Write a function called max_of_four. It should take four
numbers as parameters. It should return the largest number.

Here is what it should do.

**Input:**

::

   1 3
   2 4
   3 6
   4 5

Your function should return 6 because that is the largest number.

Think about how to compare four numbers. You could use the max function
that Python provides. You could also use if statements to compare them
one by one.

Try writing it yourself before looking at a solution. That is how you
learn best.

Review (11/16/2025)
-------------------

Python

New Topic Expectation/Crite 1 2 3

New Topic Expectation/Crite 1 2 3 4

New Topic Expectations/Crit 1 2 3 4 5 6

New 1 2 3 4
