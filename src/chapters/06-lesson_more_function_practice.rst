=================================
Lesson 6: More Function Practice
=================================

**Reviewer:** Synovic, Nicholas SN **Owner:** Bisharat, Arslan BA

Professor Thiruvathukal is impressed with how quickly the CS students
learned basic functions. Now he wants to teach them more advanced
techniques. Arslan and his classmates are ready for the challenge.

Complex Functions: Functions with Multiple Steps
------------------------------------------------

Sometimes a function needs to do several things before giving you an
answer. These are called complex functions. They break big problems into
smaller steps.

Arslan needs to process student survey data. Each student rates their
courses from 1 to 5. He wants to calculate their average rating and tell
them if they are satisfied.

::

   1 def analyze_ratings(ratings):
   2     total = 0
   3     for rating in ratings:
   4         total = total + rating
   5
   6     average = total / len(ratings)
   7
   8     if average >= 4.0:
   9         feedback = "Very satisfied"
   10     elif average >= 3.0:
   11         feedback = "Satisfied"
   12     else:
   13         feedback = "Needs improvement"
   14
   15 return average feedback
   Python

This function takes a list of ratings as input. First it loops through
each rating and adds them all together to get a total. Then it divides
the total by how many ratings there are to get the average. After that
it checks the average and decides what feedback message to give. If the
average is 4.0 or higher the student is very satisfied. If it is between
3.0 and 4.0 they are satisfied. Below 3.0 means things need improvement.
Finally the function returns both the average number and the feedback
message.

Now Arslan uses this function with Manuel’s ratings.

::

   1 manuel_ratings = [5, 4, 5, 3, 4]
   2 avg, status = analyze_ratings(manuel_ratings)
   3 print("Average:", avg)
   4 print("Status:", status)

Output:

::

   1 Average: 4.2
   2 Status: Very satisfied
   Python

Manuel gave five ratings. The function added them up to get 21. Then it
divided 21 by 5 to get 4.2. Since 4.2 is greater than 4.0 the feedback
says very satisfied. The function returned both pieces of information
and Arslan saved them in two variables.

Processing Lists: Doubling Values
---------------------------------

Erik needs to double all the scores in a list. Professor Thiruvathukal
shows him how to create a function that processes each item.

::

   1 def double_scores(scores):
   2     doubled = []
   3     for score in scores:
   4         doubled.append(score * 2)
   5     return doubled

This function takes a list of scores as input. It starts by creating an
empty list called doubled. Then it loops through each score in the
original list. For each score it multiplies it by 2 and adds that new
value to the doubled list. When the loop finishes the function returns
the new list with all the doubled values.

Erik tests it with some scores.

::

   1 original = [10, 20, 15, 25]
   2 result = double_scores(original)
   3 print(result)
   Python

Output:

::

   1 [20, 40, 30, 50]

The function took each number in the original list and doubled it. The
number 10 became 20. The number 20 became 40. The function created a
completely new list so the original list stayed the same.

Processing Lists: Filtering Values
----------------------------------

Behnaz wants to find all students who scored above 80 on an exam. She
needs a function that filters the list.

::

   1 def high_scorers(scores, threshold):
   2     passing = []
   3     for score in scores:
   4         if score >= threshold:
   5             passing.append(score)
   6     return passing
   Python

This function takes two inputs. The first is a list of scores. The
second is a threshold number. The function creates an empty list called
passing. Then it loops through each score. For each score it checks if
that score is greater than or equal to the threshold. If it is then that
score gets added to the passing list. If not then the score gets
skipped. When the loop ends the function returns the passing list with
only the high scores.

She tests it with her class scores.

::

   1 exam_scores = [95, 72, 88, 91, 65, 84, 78]
   2 good_scores = high_scorers(exam_scores, 80)
   3 print(good_scores)

Output:

::

   1 [95, 88, 91, 84]
   Python

The function looked at each score and compared it to 80. The scores 95,
88, 91, and 84 are all greater than or equal to 80 so they made it into
the new list. The scores 72, 65, and 78 are below 80 so they got
filtered out.

Combining Strings and Numbers
-----------------------------

Jason needs to create formatted report cards. His function must combine
student names with their numeric grades.

::

   1 def create_report(name, scores):
   2     total = sum(scores)
   3     average = total / len(scores)
   4
   5     report = "Student: " + name + "\n"
   6     report = report + "Total Points: " + str(total
   7     report = report + "Average: " + str(round(aver
   8
   9     if average >= 90:
   10         grade = "A"
   11     elif average >= 80:
   12         grade = "B"
   13     elif average >= 70:
   14         grade = "C"

This function takes a student name and a list of scores. First it uses
sum to add all the scores together and then divides by the length to get
the average. Then it starts building a report string. The symbol plus
sign joins strings together and the symbol backslash n creates a new
line. When you join numbers to strings you must convert the numbers
using str first. The function uses round to make the average show only 2
decimal places. After building the first part of the report it checks
the average and assigns a letter grade. If the average is 90 or above
the grade is A. If it is 80 or above the grade is B. If it is 70 or
above the grade is C. Otherwise the grade is F. Finally it adds the
letter grade to the report and returns the complete string.

Jason creates a report for Izzy.

::

   1 izzy_scores = [92, 88, 95, 91]
   2 report = create_report("Izzy Moore", izzy_scores)
   3 print(report)
   Python

Output:

::

   1 Student: Izzy Moore
   2 Total Points: 366
   3 Average: 91.5
   4 Letter Grade: A

The function added 92 plus 88 plus 95 plus 91 to get 366. Then it
divided 366 by 4 to get 91.5. Since 91.5 is greater than 90 the letter
grade is A. The function built a nicely formatted report combining all
this information.

Advanced Parameters: Multiple Data Types
----------------------------------------

Michael needs a function that handles different types of information.
Some parameters are strings. Some are numbers. Some are lists.

::

   1 def student_summary(name, student_id, courses, gpa)
   2     summary = "Name: " + name + "\n"
   3     summary = summary + "ID: " + str(student_id) +
   4     summary = summary + "Enrolled in " + str(len(cou
   5     summary = summary + "GPA: " + str(gpa)
   6     return summary
   Python

This function takes four parameters with four different types. The name
is a string. The student_id is a number. The courses is a list. The gpa
is a decimal number. The function builds a summary by combining all
these pieces. It converts the numbers to strings using str so they can
be joined with the other text. It uses len to count how many courses are
in the list. Then it returns the complete summary string.

Michael creates a summary for Mujtaba.

::

   1 result = student_summary("Mujtaba Nazari", 12345, [
   2 print(result)

Output:

::

   1 Name: Mujtaba Nazari
   2 ID: 12345
   3 Enrolled in 3 courses
   4 GPA: 3.85
   Python

The function received a string, a number, a list with three items, and a
decimal. It handled each type correctly and built a formatted summary.
The courses list had three items so len returned 3.

Keyword Arguments for Flexibility
---------------------------------

Ihab discovers that functions can accept arguments by name. This makes
the code clearer and lets you put arguments in any order.

::

   1 def register_student(name, program, year, advisor):
   2     message = name + " enrolled in " + program + "\n
   3     message = message + "Year: " + str(year) + "\n"
   4     message = message + "Advisor: " + advisor
   5     return message

This function takes four parameters and builds a message string from
them. It joins the name and program together. Then it adds the year
after converting it to a string. Finally it adds the advisor name. The
function returns the complete message.

Ihab can call this function in two ways.

::

   1 result1 = register_student("Ihab Al shaikhli", "Comp
   2 print(result1)
   3 print()
   4
   5 result2 = register_student(
   6     advisor="Dr. Thiruvathukal",
   7     name="Ihab Al shaikhli",
   8     year=2,
   9     program="Computer Science"
   10 )
   11 print(result2)
   Python

Output:

::

   1 Ihab Al shaikhli enrolled in Computer Science
   2 Year: 2
   3 Advisor: Dr. Thiruvathukal
   4
   5 Ihab Al shaikhli enrolled in Computer Science
   6 Year: 2
   7 Advisor: Dr. Thiruvathukal

The first way uses positional arguments. You must put them in the exact
order the function expects. The second way uses keyword arguments. You
write the parameter name followed by an equals sign and then the value.
With keyword arguments you can put them in any order you want. Both ways
produce exactly the same result. Keyword arguments make the code easier
to read because you can see what each value represents.

Default Parameters in Complex Scenarios
---------------------------------------

Nicholas creates a function to email students. Most emails go to CS
students. Some go to other majors. He uses default parameters to handle
both cases.

::

   1 def send_email(recipient, subject, program="Compute
   2     email = "To: " + recipient + "\n"
   3     email = email + "Subject: " + subject + "\n"
   4     email = email + "Program: " + program + "\n"
   5
   6     if urgent:
   7         email = email + "PRIORITY: HIGH\n"
   8
   9     email = email + "\nEmail sent successfully."
   10     return email
   Python

This function has four parameters. The last two have default values. The
program defaults to Computer Science and urgent defaults to False. The
function builds an email string by combining the recipient and subject.
It adds the program name. Then it checks if urgent is True. If it is
then it adds a priority line. If urgent is False then it skips that
line. Finally it adds a success message and returns the complete email.

Nicholas sends different types of emails.

::

   1 email1 = send_email("Matt Hyatt", "Research Meeting
   2 print(email1)
   3 print()
   4
   5 email2 = send_email("Erik Pautsch", "Grant Deadline
   6 print(email2)

Output:

::

   1 To: Matt Hyatt
   2 Subject: Research Meeting Tomorrow
   3 Program: Computer Science
   4
   5 Email sent successfully.
   6
   7 To: Erik Pautsch
   8 Subject: Grant Deadline
   9 Program: Data Science
   10 PRIORITY: HIGH
   11
   12 Email sent successfully.
   Python

The first call only provided recipient and subject. The function used
Computer Science as the default program and False as the default urgent
value. The second call changed both defaults by providing different
values. This shows how default parameters make functions flexible
without requiring you to always type every argument.

Function Composition: Calling Functions Within Functions
--------------------------------------------------------

Professor Thiruvathukal teaches the class about function composition.
This means one function calls another function. It helps break complex
problems into simple pieces.

Arslan needs to process student applications. He creates several small
functions. Then he creates one big function that uses all the small
ones.

::

   1 def calculate_gpa_points(gpa):
   2     if gpa >= 3.8:
   3         return 100
   4     elif gpa >= 3.5:
   5         return 75
   6     elif gpa >= 3.0:
   7         return 50
   8     else:
   9         return 25
   10
   11 def calculate_research_points(publications):
   12     return publications * 20
   13
   14 def calculate recommendation points(recommendation

Each small function does one calculation. The calculate_gpa_points
function looks at the GPA and assigns points based on how high it is.
The calculate_research_points function multiplies the number of
publications by 20. The calculate_recommendation_points function gives
points based on how many recommendations there are. The big function
evaluate_application calls all three smaller functions. It passes the
gpa to calculate_gpa_points and stores the result in gpa_pts. It passes
publications to calculate_research_points and stores that result. It
does the same for recommendations. Then it adds all three point values
together. After that it builds a report string showing all the details.
Finally it checks if the total is 150 or more. If it is the decision is
accepted. Otherwise the decision is waitlisted.

Arslan evaluates an application for Michael.

::

   1 decision = evaluate_application("Michael Saban", 3.
   2 print(decision)
   Python

Output:

::

   1 Applicant: Michael Saban
   2 GPA Points: 100
   3 Research Points: 40
   4 Recommendation Points: 50
   5 Total Score: 190
   6 Decision: ACCEPTED

The evaluate_application function called calculate_gpa_points with 3.9.
Since 3.9 is greater than 3.8 that function returned 100. Then it called
calculate_research_points with 2. That function multiplied 2 times 20
and returned 40. Then it called calculate_recommendation_points with 3.
Since 3 is greater than or equal to 3 that function returned 50. The
main function added 100 plus 40 plus 50 to get 190. Since 190 is greater
than 150 Michael got accepted.

Building Modular Solutions
--------------------------

Manuel learns that good programmers write modular code. This means
breaking big problems into independent pieces. Each piece is a function
that does one thing well.

Manuel needs to analyze course enrollment data. He creates separate
functions for each task.

::

   1 def count_students(enrollment_list):
   2     return len(enrollment_list)
   3
   4 def find_average_age(ages):
   5     return sum(ages) / len(ages)
   6
   7 def find_most_popular_major(majors):
   8     major_counts = {}
   9     for major in majors:
   10         if major in major_counts:
   11             major_counts[major] = major_counts[majo
   12         else:
   13             major_counts[major] = 1
   14
   15 most popular = ""
   Python

The count_students function just returns the length of a list. The
find_average_age function adds all ages together and divides by how many
there are. The find_most_popular_major function creates a dictionary to
count each major. It loops through all the majors and adds 1 to the
count each time it sees that major. Then it loops through the dictionary
to find which major has the highest count. The
generate_enrollment_report function calls all three smaller functions.
It gets the total student count, the average age, and the most popular
major. Then it builds a report string combining all this information.

Manuel generates a report.

::

   1 students = ["Behnaz Eslami", "Jason Luce", "Izzy Moo
   2 student_ages = [28, 26, 25]
   3 student_majors = ["Computer Science", "Data Science
   4
   5 report = generate_enrollment_report(students, studen
   6 print(report)

Output:

::

   1 Enrollment Report
   2 Total Students: 3
   3 Average Age: 26.3
   4 Most Popular Major: Computer Science
   Python

The count_students function counted 3 names in the list. The
find_average_age function added 28 plus 26 plus 25 to get 79 then
divided by 3 to get 26.3. The find_most_popular_major function counted
Computer Science twice and Data Science once so Computer Science won.
Each function did one job well and the main function combined their
results.

Handling Common Errors: Index Errors
------------------------------------

Erik learns that lists can cause index errors. This happens when you try
to access a position that does not exist.

::

   1 def get_student_at_position(students, position):
   2     if position < 0 or position >= len(students):
   3         return "Error: Position out of range"
   4     return students[position]

This function takes a list of students and a position number. Before
trying to access the list it checks if the position is valid. If
position is less than 0 that is invalid because list positions start at
0. If position is greater than or equal to the length of the list that
is also invalid because the last valid position is length minus 1. If
either check fails the function returns an error message. If the
position is valid then the function returns the student at that
position.

Erik tests with different positions.

::

   1 cs_students = ["Ihab Al shaikhli", "Arslan Bisharat
   2
   3 print(get_student_at_position(cs_students, 1))
   4 print(get_student_at_position(cs_students, 5))
   Python

Output:

::

   1 Arslan Bisharat
   2 Error: Position out of range

The list has 3 students so valid positions are 0, 1, and 2. Position 1
is valid so the function returned Arslan Bisharat. Position 5 does not
exist so the function returned an error message instead of crashing.

Handling Common Errors: Type Mismatches
---------------------------------------

Behnaz discovers that mixing data types can cause problems. Her function
expects numbers but sometimes gets text.

::

   1 def calculate_average_safe(scores):
   2     if not scores:
   3         return "Error: Empty list"
   4
   5     total = 0
   6     for score in scores:
   7         if not isinstance(score, (int, float)):
   8             return "Error: All scores must be numbe
   9         total = total + score
   10
   11     return total / len(scores)
   Python

This function first checks if the scores list is empty. If it is then
dividing by length would cause an error so the function returns an error
message. Then it loops through each score. For each score it uses
isinstance to check if that score is either an int or a float. If the
score is neither type then it is not a number and the function returns
an error message. If all scores are valid numbers then the function adds
them up and divides by the length to get the average.

Behnaz tests with good data and bad data.

::

   1 good_data = [85, 90, 88]
   2 bad_data = [85, "ninety", 88]
   3
   4 print(calculate_average_safe(good_data))
   5 print(calculate_average_safe(bad_data))

Output:

::

   1 87.66666666666667
   2 Error: All scores must be numbers
   Python

The good data list has all numbers so the function calculated the
average normally. The bad data list has the string ninety in it. When
the function checked that item isinstance returned False so the function
stopped and returned an error message.

Printing Intermediate Values for Debugging
------------------------------------------

Jason has a complex function that is not working correctly. Professor
Thiruvathukal shows him how to print intermediate values to find the
problem.

::

   1 def calculate_final_grade(homework, midterm, final)
   2     print("Debug: homework =", homework)
   3     print("Debug: midterm =", midterm)
   4     print("Debug: final =", final)
   5
   6     homework_avg = sum(homework) / len(homework)
   7     print("Debug: homework_avg =", homework_avg)
   8
   9     weighted = homework_avg * 0.3 + midterm * 0.3 +
   10     print("Debug: weighted =", weighted)
   11
   12     return weighted

This function calculates a final grade using weighted averages. To help
debug it Jason added print statements after each calculation. First it
prints the original inputs so he can see what data came in. Then it
calculates the homework average and prints that. Then it calculates the
weighted grade using 30 percent homework, 30 percent midterm, and 40
percent final. It prints the weighted result. Finally it returns the
weighted grade.

Jason runs the function to see what happens at each step.

::

   1 hw_scores = [85, 90, 88, 92]
   2 result = calculate_final_grade(hw_scores, 87, 91)
   3 print("Final Grade:", result)
   Python

Output:

::

   1 Debug: homework = [85, 90, 88, 92]
   2 Debug: midterm = 87
   3 Debug: final = 91
   4 Debug: homework_avg = 88.75
   5 Debug: weighted = 89.525
   6 Final Grade: 89.525

The debug prints show exactly what happened at each step. Jason can see
that the homework list came in correctly. The midterm and final are
correct. The homework average calculated correctly as 88.75. The
weighted calculation multiplied 88.75 times 0.3 to get 26.625, then 87
times 0.3 to get 26.1, then 91 times 0.4 to get 36.4, then added them
all to get 89.525. Once Jason confirms everything works he can remove
the debug print statements.

Testing Functions with Edge Cases
---------------------------------

Nicholas learns to test his functions with unusual inputs. These are
called edge cases. They help find bugs before users encounter them.

::

   1 def safe_divide(a, b):
   2     if b == 0:
   3         return "Error: Cannot divide by zero"
   4     return a / b
   Python

This function divides two numbers. Before doing the division it checks
if b is zero. Dividing by zero would cause a crash so the function
returns an error message instead. If b is not zero then the function
performs the division normally.

Nicholas tests normal cases and edge cases.

::

   1 print(safe_divide(10, 2))
   2 print(safe_divide(10, 0))
   3 print(safe_divide(0, 5))
   4 print(safe_divide(-10, 2))

Output:

::

   1 5.0
   2 Error: Cannot divide by zero
   3 0.0
   4 -5.0
   Python

The first test used normal positive numbers and got 5.0. The second test
tried to divide by zero and got an error message instead of crashing.
The third test had zero as the top number which is allowed and gives
0.0. The fourth test used a negative number and correctly got negative
5.0. By testing all these edge cases Nicholas confirmed his function
handles every situation correctly.

Writing Clear, Focused Functions
--------------------------------

Professor Thiruvathukal emphasizes that good functions do one thing
well. They should be easy to understand and have clear names.

Bad example:

::

   1 def do_stuff(x, y, z):
   2     a = x + y
   3     b = a * z
   4     c = b / 2
   5     print(c)
   6     d = c ** 2
   7     return d

This function has problems. The name do_stuff tells you nothing about
what it does. The variable names a, b, c, d do not explain what they
represent. The function does multiple unrelated calculations. It both
prints and returns which is confusing.

Good example:

::

   1 def calculate_area(length, width):
   2     return length * width
   3
   4 def calculate_volume(area, height):
   5     return area * height
   6
   7 def calculate_half_volume(volume):
   8     return volume / 2
   Python

These functions are much better. Each name clearly says what the
function does. The parameter names explain what values you need to
provide. Each function does exactly one thing. You can understand each
function in seconds.

Avoiding Side Effects
---------------------

Mujtaba learns about side effects. These happen when a function changes
something outside itself. This can cause unexpected problems.

Bad example with side effects:

::

   1 def add_student_bad(student_list, name):
   2     student_list.append(name)
   3     return student_list Python

This function takes a list and a name. It uses append to add the name to
the list. Then it returns the list. The problem is append changes the
original list. This is a side effect because the function modified
something that exists outside itself.

Good example without side effects:

::

   1 def add_student_good(student_list, name):
   2     new_list = student_list.copy()
   3     new_list.append(name)
   4     return new_list
   Python

This function is better. It uses copy to create a brand new list. Then
it adds the name to the new list. The original list never gets changed.
This prevents side effects.

Mujtaba tests both versions.

::

   1 original = ["Ihab Al shaikhli", "Arslan Bisharat"]
   2
   3 result1 = add_student_bad(original, "Behnaz Eslami"
   4 print("After bad function:")
   5 print("Original:", original)
   6 print("Result:", result1)
   7 print()
   8
   9 original2 = ["Ihab Al shaikhli", "Arslan Bisharat"]
   10 result2 = add_student_good(original2, "Behnaz Eslam
   11 print("After good function:")
   12 print("Original:", original2)
   13 print("Result:", result2)

Output:

::

   1 After bad function:
   2 Original: ['Ihab Al shaikhli', 'Arslan Bisharat', 'B
   3 Result: ['Ihab Al shaikhli', 'Arslan Bisharat', 'Beh
   4
   5 After good function:
   6 Original: ['Ihab Al shaikhli', 'Arslan Bisharat']
   7 Result: ['Ihab Al shaikhli', 'Arslan Bisharat',
   'Behnaz Eslami']

The bad function changed the original list. Now original has Behnaz in
it even though Mujtaba did not directly change original. This side
effect can cause bugs in larger programs. The good function left
original2 alone. Only the result has Behnaz. This makes the code
predictable and safe.

Organizing Code for Readability
-------------------------------

Matt learns that well organized code is easier to maintain. He follows
these principles. Use meaningful variable names. Add blank lines between
logical sections. Keep functions short. Group related functions
together.

Bad example:

::

   1 def f(x,y,z):
   2     r=x*2+y*3+z*4
   3     if r>100:
   4         return True
   5     else:
   6         return False

This code is hard to read. The function name f means nothing. The
variable names x, y, z, r do not explain what they represent. Everything
is crammed together with no spaces. You have to work hard to understand
it.

Good example:

::

   1 def exceeds_threshold(homework, midterm, final):
   2     homework_weighted = homework * 2
   3     midterm_weighted = midterm * 3
   4     final_weighted = final * 4
   5
   6     total_score = homework_weighted + midterm_weight
   7
   8     threshold = 100
   9     return total_score > threshold
   Python

This code is much clearer. The function name exceeds_threshold tells you
what it checks. The parameter names homework, midterm, final explain
what values you need. Each calculation has its own line with a
descriptive variable name. Blank lines separate the three logical steps.
The return statement is simple and clear. Anyone can understand this
code immediately.

Practice Problem: Two Sum
-------------------------

Now you try a real programming challenge. This problem appears on
LeetCode and is used in technical interviews.

Write a function called two_sum. It takes a list of numbers and a target
number. It should return the positions of two numbers that add up to the
target.

Example:

::

   1 numbers = [2, 7, 11, 15]
   2 target = 9

Your function should return [0, 1] because numbers[0] + numbers[1]
equals 2 + 7 which equals 9.

Another example:

::

   1 numbers = [3, 2, 4]
   2 target = 6
   Python

Your function should return [1, 2] because numbers[1] + numbers[2]
equals 2 + 4 which equals 6.

Think about how to solve this. You need to check all possible pairs of
numbers. You can use two loops. The outer loop picks the first number.
The inner loop picks the second number. For each pair you add them
together. If they equal the target then you return the positions of
those two numbers. Don’t worry about loops right now. You’ll learn about
this in Lesson 11 and 12.

Remember to handle edge cases. What if no pair adds up to the target?
You could return an empty list or an error message. What if the list is
empty? You should check for that at the start.

This problem teaches you about nested loops and list indexing. It also
shows you how to return a list with multiple values. These skills are
important for advanced programming.

Review (11/16/2025)
-------------------

::

   New

   Topic Expectation/Criteria

   1

   Flow & Clarity Lesson follows a logical stru

   • Intro

   • Concept

   • Code examples

   • Practice

   • Reflection

   Each section transitions smo

   2

   Completeness All required sections:

   • Objectives

   • Materials

   • Outline

   • Reflection

   • Assessment

   • Homework/Further read

   3

   Continuity Connects explicitly to prior l

   and previews how it prepare

   the next

   4
   Timing Time estimates per section a

   realistic and sum to ~60-75



   New

   Topic Expectation/Crite

   1

   Clarity Objectives follow Bloo

   including verbs such a

   evaluate.

   Avoid vague verbs lik

   2
   Alignment Objectives align with

   assessments.

   3
   Scope Objectives are neithe

   narrow

   New

   Topic Expectation/Crite

   1

   2

   3

   4



   New

   Topic Expectations/Crit

   1

   2

   3

   4

   5

   6

   New

   Topic Expectations/Crit

   1

   2

   3

   4



   New

   Topic Expectations/Crit

   1

   2

   3

   4
