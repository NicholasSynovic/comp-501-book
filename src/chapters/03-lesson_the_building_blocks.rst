==============================
Lesson 3: The Building Blocks
==============================

[cite_start]\ **Reviewer:** SN Synovic, Nicholas [cite: 183]
[cite_start]\ **SN** Some of the advanced content … [cite: 184]
[cite_start]\ **Owner:** EB Eslami, Behnaz [cite: 185]

- [cite_start]Variables [cite: 186]
- [cite_start]Data types [cite: 187]
- [cite_start]Expressions [cite: 188]
- [cite_start]Operators [cite: 189]

[cite_start]Lesson Goals [cite: 190]
------------------------------------

[cite_start]By the end of this chapter, students will be able to: [cite:
191]

- [cite_start]Define and create variables using Python naming
  conventions. [cite: 192]
- [cite_start]Identify and differentiate primitive types (int, float,
  str, bool). [cite: 192]
- [cite_start]Construct and evaluate expressions using correct operator
  precedence. [cite: 193]
- [cite_start]Apply arithmetic, relational, logical, and bitwise
  operators effectively. [cite: 193]
- [cite_start]Perform explicit and implicit type conversions (casting)
  safely. [cite: 194]
- [cite_start]Diagnose and debug common type and expression-related
  errors. [cite: 194]
- [cite_start]Write clean, readable code using these core building
  blocks. [cite: 195]
- [cite_start]Explain how these fundamentals support collections and
  data structures such as lists, tuples, and dictionaries. [cite: 196]

[cite_start]Materials & Setup [cite: 197]
-----------------------------------------

[cite_start]\ **Required:** [cite: 198]

- [cite_start]Python 3.x (VS Code, Jupyter, or Colab) [cite: 199]
- [cite_start]Standard library only (sys for memory-size demo) [cite:
  200]

[cite_start]\ **Optional:** starter notebook with headings and examples
[cite: 201]

[cite_start]\ **Setup (students):** [cite: 202]

1. [cite_start]Create a new Python file or notebook. [cite: 203]
2. [cite_start]\ ``import sys`` [cite: 204]
3. [cite_start]Run ``print(sys.version)`` to confirm your environment.
   [cite: 205]

[cite_start]\ **Instructor Notes:** [cite: 206]

- [cite_start]\ **Large classes:** Demonstrate live, then assign pair
  coding tasks. [cite: 207]
- [cite_start]\ **Short on time?** Focus on primitive types,
  conversions, and basic operators — assign Section 4-5 as homework.
  [cite: 208]
- [cite_start]Functions appear here for demonstration; full function
  topics will come later. [cite: 209]

[cite_start]Outline & Timing [cite: 210]
----------------------------------------

======= ================================ ===
Segment                                  Min
======= ================================ ===
1       Continuity Bridge & Introduction 5
2       Variables & Naming               10
3       Data Types & Conversions         25
4       Expressions & Operators          15
5       Guided Practice                  10
6       Reflection & Summary             5
7       Total                            70
======= ================================ ===

[cite_start]If time is tight, cover sections 4-5 lightly in class and
assign the deeper examples as homework. [cite: 215] [cite_start]The next
chapter begins collections (lists, tuples, dicts) and introduces
concrete data structures. [cite: 216]

[cite_start]Continuity Bridge [cite: 217]
-----------------------------------------

- [cite_start]\ **Previously:** We discussed how programs bind names
  (variables) to values in memory. [cite: 218]
- [cite_start]\ **Today:** We make those values meaningful with types,
  practice conversions, and build expressions/operators to compute
  results. [cite: 219]
- [cite_start]\ **Next:** We’ll move on to collections (lists, tuples,
  dicts) and begin building concrete data structures such as arrays,
  stacks, and queues. [cite: 220]

[cite_start]1. Introduction [cite: 221]
---------------------------------------

[cite_start]Why These Fundamentals Matter [cite: 222]
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

[cite_start]Every program, regardless of complexity, relies on three
core concepts: [cite: 223]

- [cite_start]\ **Variables:** Named locations where we store data.
  [cite: 224]
- [cite_start]\ **Data Types:** Categories that define what kind of data
  we can store and how much memory it uses. [cite: 225]
- [cite_start]\ **Expressions:** Combinations of variables and operators
  that produce new values. [cite: 226]

[cite_start]Understanding these concepts deeply helps you write
efficient code, avoid bugs, and design better data structures. [cite:
227]

[cite_start]Connection to Data Structures - Preview [cite: 228]
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

[cite_start]When you implement a linked list node, you need to declare
variables for the data and pointers. [cite: 229] [cite_start]A linked
list is a linear collection of nodes where each node holds a value and a
reference to the next node. [cite: 230] [cite_start]It’s called “linked”
because nodes point to one another rather than being stored
contiguously, making insertions and deletions efficient since only
references are updated. [cite: 231]

[cite_start]Similarly, when you create a hash table, you need to
understand data types and type conversion. [cite: 232] [cite_start]A
hash table stores key-value pairs and uses a hash function to map each
key to an index (bucket), allowing for average-case :math:`O(1)` lookup
and insertion. [cite: 233] [cite_start]In Python, the ``dict`` type is a
high-performance hash-table implementation. [cite: 234]

These fundamentals—variables, data types, and expressions—underpin every
data structure. [cite_start]A solid grasp of how memory references,
types, and operators interact will help you implement and reason about
more complex structures effectively. [cite: 235, 236]

[cite_start]\ **Instructor tip:** Briefly frame this as why these basics
matter. [cite: 237] [cite_start]The next chapter applies them directly
to collections and data structures. [cite: 238]

[cite_start]2. Variables [cite: 239]
------------------------------------

[cite_start]2.1 What is a Variable? [cite: 240]
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

[cite_start]A variable is a named storage location in your computer’s
memory. [cite: 241] [cite_start]Think of it as a labeled box where you
can store a value. [cite: 242] [cite_start]The name allows you to
reference that value later without needing to know its exact memory
address. [cite: 243]

[cite_start]In Python, variables are extremely flexible—you don’t need
to specify what type of data they’ll hold before creating them. [cite:
244] [cite_start]Python figures out the type based on the value you
assign. [cite: 245]

[cite_start]When you create a variable, Python allocates memory for it
and associates that memory location with the variable’s name. [cite:
246] [cite_start]This name becomes your reference point whenever you
need to access or modify the value. [cite: 247]

.. code:: python

   # Creating a variable
   age = 25
   name = "Alice"
   is_student = True

   print(age)         # Output: 25
   print(name)        # Output: Alice
   print(is_student)  # Output: True

[cite_start]In this example: [cite: 259]

- [cite_start]\ ``age`` is the variable name [cite: 260]
- [cite_start]\ ``25`` is the value stored [cite: 261]
- [cite_start]Python automatically determines that ``age`` should store
  an integer [cite: 265]

[cite_start]2.2 Variable Declaration and Initialization [cite: 266]
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

[cite_start]In most programming languages, declaration (creating a
variable) and initialization (giving it a value) are separate steps.
[cite: 267] [cite_start]However, in Python, these happen
simultaneously—you can’t declare a variable without immediately giving
it a value. [cite: 268] [cite_start]When you assign a value to a
variable name for the first time, Python creates the variable and stores
the value in it. [cite: 269]

[cite_start]Variables can be reassigned to different values, and Python
will automatically adjust the type if needed. [cite: 270]
[cite_start]For example, a variable initially holding an integer can
later hold a string. [cite: 271] [cite_start]You can also create
multiple variables at once using unpacking, which is a powerful Python
feature. [cite: 272]

.. code:: python

   # Initialization (Python infers the type)
   score = 95
   temperature = 23.5
   student_name = "Bob"

   print(type(score))        # Output: <class 'int'>
   print(type(temperature))  # Output: <class 'float'>

   # You can reassign variables
   score = 88
   print(type(score))        # Output: <class 'int'>
   # Now score is 88

   score = 88.5
   print(type(score))        # Output: <class 'float'>
   # Now score is a float

[cite_start]Variable names should be descriptive and follow Python
conventions to make your code readable for others and for future you.
[cite: 298]

.. code:: python

   # Good naming (descriptive and clear)
   student_age = 20
   max_attempts = 3
   is_valid = True
   total_score = 95
   average_gpa = 3.75

   # Poor naming (unclear or ambiguous)
   a = 20           # What does 'a' represent?
   temp = 3         # temporary what?
   x = True         # Vague name - what is x checking?
   n = 50           # Generic - what does n mean?

[cite_start]2.3 Variable Scope and Lifetime [cite: 320]
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

[cite_start]\ **Scope** refers to which parts of your program can “see”
or access a particular variable. [cite: 321] [cite_start]In Python,
variables have either **global scope** (accessible everywhere in the
program) or **local scope** (accessible only within a specific
function). [cite: 322] [cite_start]A variable defined inside a function
is local to that function—code outside the function cannot access it.
[cite: 323]

[cite_start]\ **Lifetime** refers to how long a variable exists in
memory. [cite: 324] [cite_start]A local variable is created when the
function starts executing and is destroyed when the function finishes.
[cite: 325] [cite_start]A global variable exists for the entire duration
of the program. [cite: 326]

[cite_start]Understanding scope and lifetime is crucial for avoiding
bugs and managing memory efficiently, especially when dealing with data
structures that may contain thousands of elements. [cite: 327]

.. code:: python

   # Global Scope
   global_var = 100

   def my_function():
       # Local scope
       local_var = 50
       print(global_var)  # Can access global variable: 100
       print(local_var)   # Can access local variable: 50

   my_function()
   print(global_var)      # Can access global variable: 100
   # print(local_var)     # Error: local_var is not defined here

.. code:: python

   # Lifetime Example
   def counter_example():
       count = 0          # Created when function runs
       count += 1
       print(f"Count: {count}")
       # count is destroyed when function ends

   counter_example()      # Prints: Count: 1
   counter_example()      # Prints: Count: 1 (new count variable created each time)

   # If we want to persist data, we need a global

[cite_start]2.4 Constants (by convention) [cite: 334]
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

[cite_start]Constants are values that should never change during program
execution. [cite: 335] [cite_start]While Python doesn’t technically
enforce immutability (you could change them if you tried), the
convention is to write constant names in all uppercase letters. [cite:
336] [cite_start]This signals to other programmers: “This value should
not be modified.” [cite: 337]

[cite_start]Constants are useful for storing values like PI, maximum
array sizes, or configuration parameters that are used throughout your
program but should remain fixed. [cite: 338]

.. code:: python

   # Constants (by convention, written in UPPERCASE)
   PI = 3.14159
   MAX_STUDENTS = 100
   GRAVITY = 9.81
   ARRAY_SIZE = 1000

   # Using constants
   radius = 5
   area = PI * radius ** 2
   print(f"Area of circle: {area:.2f}")
   # Output: Area of circle: 78.50

   # Checking if we exceed maximum
   current_students = 95

[cite_start]3. Data Types [cite: 361]
-------------------------------------

[cite_start]3.1 Why Data Types Matter [cite: 362]
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

[cite_start]Data types tell Python how to interpret and store data.
[cite: 363] [cite_start]Different types use different amounts of memory
and support different operations. [cite: 364] [cite_start]For example,
the number 5 stored as an integer uses less memory than storing “5” as a
string, and they support different operations (you can divide an
integer, but you can’t divide a string). [cite: 365]

[cite_start]Choosing the right type is crucial for performance and
correctness. [cite: 366] [cite_start]In data structures, this is
especially important: using an integer to count elements is more
efficient than using a string and using a boolean for a flag operation
is clearer and faster than using an integer. [cite: 367, 368]
[cite_start]As you build more complex structures, type selection
directly impacts performance and code clarity. [cite: 369]

.. code:: python

   # Same value, different types
   x = 5             # int (integer)
   y = 5.0           # float (floating-point number)
   z = "5"           # str (string/text)

   print(type(x))    # Output: <class 'int'>
   print(type(y))    # Output: <class 'float'>
   print(type(z))    # Output: <class 'str'>

   # Operations vary by type
   print(x + 2)      # Output: 7 (arithmetic addition)
   print(y + 2)      # Output: 7.0 (arithmetic addition)

[cite_start]3.2 Primitive Data Types [cite: 396]
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

[cite_start]\ **Booleans** [cite: 399]

[cite_start]Booleans are the simplest data type—they can only be
``True`` or ``False``. [cite: 400] [cite_start]Booleans are produced by
comparison operations and are used in conditional statements. [cite:
401] [cite_start]In Python, any value can be converted to a Boolean: 0
is False, non-zero numbers are True, empty strings are False, non-empty
strings are True, and empty collections are False. [cite: 402]

.. code:: python

   is_student = True
   is_graduated = False

   x = 5
   print(x > 3)            # True
   print(x == 5)           # True
   print(True and False)   # False
   print(True or False)    # True
   print(not True)         # False

   # Truthiness examples
   print(bool(1), bool(0), bool("text"), bool(""), bool([1,2,3]), bool([]))

[cite_start]\ **Integers** [cite: 418]

Integers are whole numbers without decimal points. [cite_start]Python’s
``int`` type can handle arbitrarily large numbers—you’re not limited to
small integers like in some other languages. [cite: 419] [cite_start]You
can write integers in decimal (base 10), binary (base 2 with ``0b``
prefix), hexadecimal (base 16 with ``0x`` prefix), or octal (base 8 with
``0o`` prefix). [cite: 420] [cite_start]For readability with large
numbers, Python allows underscores as separators. [cite: 421]

.. code:: python

   # Various ways to write integers
   decimal = 42
   binary = 0b101010              # Binary: 42
   hexadecimal = 0x2A             # Hexadecimal: 42
   octal = 0o52                   # Octal: 42
   large_number = 1_000_000_000   # One billion (underscores for readability)

   print(decimal)                 # Output: 42
   print(binary)                  # Output: 42
   print(hexadecimal)             # Output: 42
   print(octal)                   # Output: 42
   print(large_number)            # Output: 1000000000

   print(decimal == binary == hexadecimal) # Output: True

[cite_start]\ **Floating-Point Numbers** [cite: 423]

[cite_start]Floating-point numbers represent decimals and very large or
very small numbers. [cite: 424] [cite_start]Python uses double-precision
floating-point format, which gives good precision for most purposes but
can occasionally produce unexpected results due to how computers
represent decimals in binary. [cite: 425] [cite_start]This is important
to be aware of when comparing floating-point numbers for equality.
[cite: 426]

.. code:: python

   # Floating-point values
   price = 19.99
   scientific = 1.5e-3      # Scientific notation: 0.0015
   negative_zero = -273.15  # Negative absolute zero

   print(f"Price: ${price}")                    # Output: Price: $19.99
   print(f"Scientific: {scientific}")           # Output: Scientific: 0.0015
   print(f"Temperature: {negative_zero}°C")     # Output: Temperature: -273.15°C

[cite_start]\ **Strings as immutable sequences** [cite: 448]

Strings are sequences of characters representing text. [cite_start]In
Python, you can create strings using single quotes, double quotes, or
triple quotes for multiline strings. [cite: 449] [cite_start]Strings are
immutable, meaning once created, they cannot be changed—operations on
strings create new strings. [cite: 450] [cite_start]Strings support
indexing (accessing individual characters) and various operations like
concatenation. [cite: 451]

.. code:: python

   # String creation
   name = "Alice"
   greeting = 'Hello'
   message = 'He said "Hello"'    # Mix quotes to include quotes
   multiline = """This is a
   multiline
   string"""

   print(name)      # Output: Alice
   print(greeting)  # Output: Hello

   # String operations
   print("Hello" + " " + "World") # Output: Hello World
   print("Ha" * 3)                # Output: HaHaHa

[cite_start]3.3 Implicit conversion (coercion) [cite: 453]
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

[cite_start]Implicit type conversion happens automatically when Python
needs to combine different types in an operation. [cite: 454]
[cite_start]For example, when you add an integer to a float, Python
automatically converts the integer to a float first, then performs the
addition. [cite: 455] [cite_start]This is convenient but can sometimes
lead to unexpected results, so it’s important to be aware of when it
happens. [cite: 456]

.. code:: python

   # Python automatically converts compatible types
   x = 5             # int
   y = 2.5           # float
   result = x + y    # int automatically converts to float
   print(result)     # Output: 7.5
   print(type(result)) # Output: <class 'float'>

   # String with number
   total_items = 100
   # print("You have " + total_items + " items") # TypeError: can't concatenate
   # Solution: use conversion (see next section)

[cite_start]3.4 Explicit conversion (casting) & checks [cite: 459]
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Explicit type conversion (also called casting) is when you deliberately
convert a value from one type to another using conversion functions like
``int()``, ``float()``, ``str()``, and ``bool()``. [cite_start]This
gives you precise control over how data is converted. [cite: 460]
[cite_start]For example, you can convert the string “42” to the integer
42 or truncate a float to an integer. [cite: 461]

.. code:: python

   # Convert string to integer
   str_number = "42"
   number = int(str_number)    # "42" -> 42
   print(f"{number + 8} is an integer") # Output: 50 is an integer

   # Convert float to integer (truncates, doesn't round)
   score = 95.7
   rounded = int(score)        # 95.7 -> 95
   print(f"Truncated score: {rounded}") # Output: Truncated score: 95

   # Convert integer to string
   count = 5

[cite_start]4. Expressions [cite: 462]
--------------------------------------

[cite_start]4.1 What is an Expression? [cite: 463]
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

[cite_start]An expression is a combination of values, variables, and
operators that is evaluated to produce a result. [cite: 463] Every
expression has a value and a type. [cite_start]For example, ``3 + 4`` is
an expression that evaluates to ``7``. [cite: 464]

[cite_start]An expression is different from a statement—a statement is a
complete instruction that does something (like an assignment or a
function call), while an expression simply produces a value. [cite: 465,
466] [cite_start]In Python, you can use expressions on the right side of
an assignment, in function arguments, in conditional statements, and in
many other places. [cite: 467] [cite_start]Understanding expressions is
crucial because they’re the building blocks of all programming logic.
[cite: 468]

.. code:: python

   # Expressions produce values
   3 + 4                     # Arithmetic expression -> 7
   x > 5                     # Relational expression -> bool
   name == "Alice"           # Equality expression -> bool
   is_valid and is_active    # Logical expression -> bool

   # Expressions in assignments
   result = 3 + 4            # Right side is an expression
   print(result)             # Output: 7

[cite_start]4.2 Types of Expressions [cite: 469]
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Arithmetic expressions** use mathematical operators to perform
calculations. [cite_start]Python supports the standard operators:
addition (``+``), subtraction (``-``), multiplication (``*``), division
(``/``), floor division (``//``), modulus (``%``), and exponentiation
(``**``). [cite: 470] [cite_start]Python also has compound assignment
operators (``+=``, ``-=``, etc.) that combine an operation with
assignment. [cite: 471] [cite_start]Note that Python 3 always returns a
float for division (``/``) while floor division (``//``) returns an
integer. [cite: 472]

.. code:: python

   # Basic arithmetic
   a = 10
   b = 3

   print(f"{a} + {b} = {a + b}")    # Addition: 13
   print(f"{a} - {b} = {a - b}")    # Subtraction: 7
   print(f"{a} * {b} = {a * b}")    # Multiplication: 30
   print(f"{a} / {b} = {a / b}")    # Division: 3.333... (always float)
   print(f"{a} // {b} = {a // b}")  # Floor division: 3 (integer division)
   print(f"{a} % {b} = {a % b}")    # Modulus (remainder): 1

[cite_start]4.3 Operator Precedence and Associativity [cite: 474]
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Operators are evaluated in a specific order called precedence. Higher
precedence operators are evaluated first. [cite_start]For example,
multiplication happens before addition, so ``2 + 3 * 4`` equals 14 (not
20). [cite: 475] [cite_start]When operators have the same precedence,
associativity determines the order: most operators associate
left-to-right, meaning they’re evaluated from left to right. [cite: 476]

Understanding precedence prevents bugs in complex expressions.
[cite_start]You can always use parentheses to override precedence and
make your intentions clear. [cite: 477] [cite_start]In fact, using
parentheses is often good practice even when not strictly necessary, as
it makes your code easier to understand. [cite: 478]

.. code:: python

   # Precedence matters!
   result1 = 2 + 3 * 4         # multiply first: 3*4=12, then add: 2+12
   result2 = (2 + 3) * 4       # parentheses first: 2+3=5, then multiply: 5*4

   print(f"2 + 3 * 4 = {result1}")     # Output: 2 + 3 * 4 = 14
   print(f"(2 + 3) * 4 = {result2}")   # Output: (2 + 3) * 4 = 20

   # Precedence order (high to low):
   # 1. Parentheses ()
   # 2. Exponentiation **
   # 3. Multiplication, Division, Modulus *, /, //, %

[cite_start]4.4 Relational Expressions [cite: 480]
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

[cite_start]Relational expressions compare two values and produce a
Boolean result (``True`` or ``False``). [cite: 480] [cite_start]These
expressions are fundamental in conditional statements, loops, and
decision-making logic. [cite: 481] [cite_start]Python provides six
relational operators: ``==`` (equal to), ``!=`` (not equal to), ``<``
(less than), ``>`` (greater than), ``<=`` (less than or equal to), and
``>=`` (greater than or equal to). [cite: 482]

[cite_start]A powerful Python feature is comparison chaining, where you
can write multiple comparisons together like ``18 <= age <= 65``, which
is equivalent to ``18 <= age and age <= 65`` but more readable. [cite:
483]

.. code:: python

   x = 5
   y = 10

   print(f"{x} == {y}: {x == y}")  # Equal to: False
   print(f"{x} != {y}: {x != y}")  # Not equal to: True
   print(f"{x} < {y}: {x < y}")    # Less than: True
   print(f"{x} > {y}: {x > y}")    # Greater than: False
   print(f"{x} <= {y}: {x <= y}")  # Less than or equal: True
   print(f"{x} >= {y}: {x >= y}")  # Greater than or equal: False

[cite_start]4.5 Logical Expressions [cite: 484]
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Logical expressions use logical operators (``and``, ``or``, ``not``) to
combine Boolean values or conditions. [cite_start]\ ``and`` returns
``True`` only if both operands are ``True``. [cite: 485] ``or`` returns
``True`` if at least one operand is ``True``. [cite_start]\ ``not``
negates a Boolean value. [cite: 486] [cite_start]These operators are
fundamental to control flow—you will use them constantly in if
statements, while loops, and when filtering data structures. [cite: 487]

[cite_start]An important Python feature is **short-circuiting
evaluation**: for ``and`` operations, if the first operand is ``False``,
Python does not even evaluate the second operand (because the result
will be ``False`` anyway). [cite: 488] [cite_start]For ``or``
operations, if the first operand is ``True``, Python does not evaluate
the second operand. [cite: 489] [cite_start]This is useful for
efficiency and avoiding errors. [cite: 490]

[cite_start]\ **Basic Logical Operations** [cite: 490]

This following example shows the fundamental behavior of ``and``,
``or``, and ``not`` operators with simple Boolean values:

.. code:: python

   # Logical AND: both must be True
   print(f"True and True = {True and True}")      # Output: True
   print(f"True and False = {True and False}")    # Output: False
   print(f"False and False = {False and False}")  # Output: False

   # Logical OR: at least one must be True
   print(f"True or False = {True or False}")      # Output: True
   print(f"False or False = {False or False}")    # Output: False

   # Logical NOT: negation

[cite_start]\ **Practical Enrollment Example** [cite: 491]

This example shows how logical operators are used in real-world decision
logic—checking multiple conditions before allowing an action
(enrollment):

.. code:: python

   # Practical example: checking enrollment criteria
   age = 20
   is_student = True
   has_documents = True

   can_enroll = age >= 18 and is_student and has_documents
   print(f"Can enroll: {can_enroll}")
   # Output: Can enroll: True

   # Another example: checking membership benefits
   has_discount = False
   is_member = True
   gets_offer = has_discount or is_member
   print(f"Gets offer: {gets_offer}")

[cite_start]\ **Short-Circuit Evaluation** [cite: 492]

Short-circuit evaluation is an optimization where Python stops
evaluating an expression as soon as it determines the final result.
[cite_start]This example demonstrates when this happens and why it
matters: [cite: 493]

.. code:: python

   # Short-circuit evaluation (important!)
   print("Testing short-circuit evaluation:")
   x = 5

   # This won't print because x > 10 is False, so 'and' stops evaluating
   # Python knows that False and anything = False, so it doesn't evaluate the rest
   result1 = x > 10 and print("This won't print")
   print(f"Result 1: {result1}")
   # Output: Result 1: False

   # This will print because x > 0 is True, so 'or' stops evaluating

[cite_start]4.6 Bitwise Operators [cite: 494]
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

[cite_start]Bitwise operators work directly on the binary (base-2)
representations of integers. [cite: 494] [cite_start]Instead of treating
numbers as regular integers, bitwise operators manipulate individual
bits. [cite: 495] [cite_start]For example, ``5 & 3`` (AND) checks which
bits are 1 in both numbers. [cite: 496] [cite_start]While less commonly
used than arithmetic and logical operators, bitwise operations are
important in systems programming, graphics, networking, and data
compression. [cite: 497] [cite_start]Understanding them helps you
appreciate how computers work at a low level. [cite: 498]

[cite_start]The main bitwise operators are: [cite: 499]

- ``&`` (AND): Result has 1 where both inputs have 1
- [cite_start]\ ``|`` (OR): Result has 1 where at least one input has 1
  [cite: 500]
- ``^`` (XOR): Result has 1 where inputs differ
- ``~`` (NOT): Flips all bits
- ``<<`` (Left shift): Multiply by powers of 2
- ``>>`` (Right shift): Divide by powers of 2

[cite_start]\ **Understanding Bitwise Operations** [cite: 500]

This example shows how bitwise operations work on binary
representations, converting numbers to binary for clarity:

.. code:: python

   # Let's visualize what numbers look like in binary
   a = 5  # Binary: 0101
   b = 3  # Binary: 0011

   print(f"a = {a} (binary: {bin(a)})")  # Output: a = 5 (binary: 0b101)
   print(f"b = {b} (binary: {bin(b)})")  # Output: b = 3 (binary: 0b11)

   # Bitwise AND (&): result has 1 where BOTH have 1
   # 0101 (5)
   # & 0011 (3)
   # = 0001 (1)
   print(f"{a} & {b} = {a & b}") # Output: 5 & 3 = 1

[cite_start]\ **Bit Shifting Operations** [cite: 501]

Bit shifting moves all bits left or right, which is equivalent to
multiplying or dividing by powers of 2. This is very efficient at the
CPU level:

.. code:: python

   # Bit shifting operations
   a = 5  # Binary: 0101

   # Left shift (<<): multiply by 2^n
   # 0101 << 1 = 1010 (shifts left by 1, fills with 0 on right)
   print(f"{a} << 1 = {a << 1}")  # Output: 5 << 1 = 10
   print(f"This is like multiplying by 2^1: 5 * 2 = {5 * 2}")

   # 0101 << 2 = 10100 (shifts left by 2)
   print(f"{a} << 2 = {a << 2}")  # Output: 5 << 2 = 20
   print(f"This is like multiplying by 2^2: 5 * 4 = {5 * 4}")

[cite_start]\ **Practical Bitwise Application** [cite: 503]

This example shows a real-world use of bitwise operators—checking if a
number is a power of 2, which is useful in computer science for array
sizing and algorithm design:

.. code:: python

   # Practical example: checking if number is power of 2
   # Powers of 2 (1, 2, 4, 8, 16, 32...) have a special property:
   # They have exactly one bit set to 1 in binary
   # 8 = 1000 (one bit)
   # 7 = 0111 (multiple bits)
   #
   # Formula: n & (n-1) == 0 means n is a power of 2

   def is_power_of_2(n):
       """Check if n is a power of 2 using bitwise AND"""
       return n > 0 and (n & (n - 1)) == 0

[cite_start]4.7 Conditional (Ternary) Operator [cite: 504]
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

[cite_start]The conditional operator (also called ternary operator) is a
compact way to write simple if-else statements in a single line. [cite:
504] [cite_start]The syntax is
``value_if_true if condition else value_if_false``. [cite: 505]
[cite_start]It is useful for assigning values based on a condition but
should be used sparingly—if the expression becomes too complex, it is
better to use a traditional if-else statement for readability. [cite:
506] [cite_start]Python also allows nested ternary operators, but these
can become hard to read. [cite: 507]

.. code:: python

   # Traditional if-else
   age = 20
   if age >= 18:
       status = "Adult"
   else:
       status = "Minor"
   print(f"Status: {status}")   # Output: Status: Adult

   # Ternary operator (one-liner)
   status = "Adult" if age >= 18 else "Minor"
   print(f"Status: {status}")   # Output: Status: Adult

[cite_start]5. Putting It All Together [cite: 508]
--------------------------------------------------

[cite_start]5.1 Building Complex Expressions [cite: 509]
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

[cite_start]Complex expressions combine multiple operators and operands
following precedence rules. [cite: 509] As expressions become more
complex, understanding how they’re evaluated becomes crucial for
correctness. When building complex expressions, you should consider: (1)
Are the operations in the correct precedence order? (2) [cite_start]Is
the expression readable? [cite: 510] (3) [cite_start]Could someone else
(or future you) understand what this code does? [cite: 511]

[cite_start]In data structures, you will often need to build complex
expressions to navigate and manipulate structures. [cite: 512]
[cite_start]For example, finding if an element exists in a tree requires
combining comparisons with logical operators. [cite: 513]
[cite_start]Let’s look at practical examples that you will encounter on
this course. [cite: 514]

.. code:: python

   # Example 1: Calculate student performance metrics
   scores = [85, 90, 78, 92, 88]

   # Sum scores
   total = sum(scores)

   # Calculate average
   average = total / len(scores)

   # Determine grade
   grade = "A" if average >= 90 else "B" if average >= 80 else "C"

   # Check if passing (average >= 70) and has good attendance

[cite_start]5.2 Type Safety and Error Prevention [cite: 515]
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

[cite_start]Type safety means ensuring that operations are performed on
appropriate data types. [cite: 515] [cite_start]Even though Python is
dynamically typed (types are checked at runtime), you should still think
about types carefully. [cite: 516] [cite_start]By checking types before
using values, you can catch many bugs early and write more robust code.
[cite: 517] [cite_start]The ``isinstance()`` function checks if a value
is of a particular type, and type validation is a best practice in
production code. [cite: 518]

In data structures, type safety becomes even more important.
[cite_start]When implementing a generic data structure that can hold any
type of data, you still need to ensure consistency within that
structure. [cite: 519] [cite_start]For example, a list of integers
should only contain integers. [cite: 520]

[cite_start]\ **Type Checking in Functions** [cite: 521]

This example shows how to validate that a function receives the correct
data type before processing:

.. code:: python

   # Example 1: Type checking in a function
   def process_data(value):
       # Validate type first
       if not isinstance(value, int):
           print(f"Error: Expected int, got {type(value).__name__}")
           return None

       # Validate value constraints
       if value < 0:
           print("Error: Value must be non-negative")
           return None

       return value * 2

[cite_start]\ **Accepting Multiple Types** [cite: 522]

Sometimes you want to accept multiple data types. [cite_start]This
example shows how to validate that input is one of several acceptable
types: [cite: 523]

.. code:: python

   # Example 2: Type checking with multiple allowed types
   def calculate_total(items):
       """Calculate total, accepting list or tuple"""
       # Verify the container type
       if not isinstance(items, (list, tuple)):
           print(f"Error: Expected list or tuple, got {type(items).__name__}")
           return None

       # Verify all items inside are numbers
       for item in items:
           if not isinstance(item, (int, float)):
               print(f"Error: Item {item} is not a number")

[cite_start]\ **Safe Type Conversion** [cite: 524]

This example shows how to safely convert user input, handling cases
where conversion fails:

.. code:: python

   # Example 3: Safe type conversion with error handling
   def get_integer_input(prompt):
       """Get integer from user, handling invalid input"""
       user_input = input(prompt)

       try:
           return int(user_input)
       except ValueError:
           print(f"Error: '{user_input}' is not a valid integer")
           return None

[cite_start]\ **Type Safety in Data Structures** [cite: 525]

[cite_start]In data structures, maintaining consistent data types
ensures predictable behavior and avoids runtime errors. [cite: 525]
[cite_start]When inserting or manipulating data within structures such
as lists, stacks, or trees, verifying that each element conforms to the
expected type keeps algorithms efficient and safe. [cite: 526]

.. code:: python

   class IntegerList:
       def __init__(self):
           self.items = []

       def add(self, value):
           if not isinstance(value, int):
               raise TypeError(f"Expected int, got {type(value).__name__}")
           self.items.append(value)

       def __repr__(self):
           return str(self.items)

   nums = IntegerList()
   nums.add(5)

[cite_start]Type checks like these become even more important when
building generic data structures. [cite: 527] [cite_start]While Python’s
dynamic typing allows flexibility, enforcing type contracts
programmatically or with tools like type hints (``List[int]``,
``Dict[str, float]``) prevents logical inconsistencies in complex
systems. [cite: 528]

[cite_start]Performance Considerations [cite: 529]
--------------------------------------------------

- [cite_start]\ **Efficient use of data types:** Choosing the smallest
  or most appropriate type reduces memory overhead and speeds up
  computation. [cite: 529] [cite_start]For instance, integers are faster
  than floats for counting operations. [cite: 530]
- [cite_start]\ **Expression optimization:** Simplify expressions to
  minimize redundant calculations. [cite: 531] [cite_start]Reusing
  computed values (via variables) and leveraging built-in operations
  (like ``sum()`` or ``max()``) can yield significant performance gains.
  [cite: 532]
- [cite_start]\ **Memory usage awareness:** Understanding mutability and
  references helps conserve memory. [cite: 533] [cite_start]For example,
  lists copy references, not values—mutating one reference affects all.
  [cite: 534] [cite_start]Prefer tuples for read-only collections and
  generators for large data streams. [cite: 535]

[cite_start]6. Memory Footprint [cite: 536]
-------------------------------------------

Use ``sys.getsizeof()`` for a rough comparison.

.. code:: python

   a, b, c = 42, 42.0, "42"
   print(sys.getsizeof(a), sys.getsizeof(b), sys.getsizeof(c))

[cite_start]7. Guided Practice [cite: 536]
------------------------------------------

1. [cite_start]Create ``name``, ``age``, ``gpa``, and ``is_full_time``;
   print each type. [cite: 536]
2. [cite_start]From “Database”, slice “Data” two ways; then try
   ``s[0] = "d"`` and explain the error. [cite: 537]
3. [cite_start]Convert “0037” to an integer and compare sizes using
   ``sys.getsizeof``. [cite: 538]

[cite_start]8. Reflection & Discussion [cite: 539]
--------------------------------------------------

- [cite_start]Where can implicit conversion surprise you? [cite: 539]
- [cite_start]Why are strings immutable? [cite: 539]
- [cite_start]When should you prefer ``"".join()`` over repeated
  concatenation? [cite: 540]

[cite_start]\ **Exit Ticket:** [cite: 540]

   [cite_start]“One thing that surprised me about types or expressions
   was \_\_\_\_. In the next chapter on collections and data structures,
   I expect to use this when I \_\_\_\_.” [cite: 541]

[cite_start]9. Assessment & Homework [cite: 542]
------------------------------------------------

**A. Short Answers**

1. [cite_start]Why might ``0.1 + 0.2 != 0.3``? [cite: 542]
2. Are strings mutable? [cite_start]Provide proof. [cite: 542, 543]
3. [cite_start]What are results of ``bool([])`` and ``bool("0")``?
   [cite: 543]

**B. Coding Tasks**

1. [cite_start]Implement ``as_bool(x)`` using truthiness; list three
   surprising inputs. [cite: 543]
2. [cite_start]Implement ``normalize_age(s)`` that trims whitespace,
   rejects negatives, and returns an ``int`` or ``None``. [cite: 544]
3. [cite_start]Compare sizes of ``10``, ``10_000``, ``"10"``,
   ``"10"*1000``; explain results. [cite: 545]

**C. Reflection** [cite_start]How will you choose between ``int``,
``float``, and ``str`` when designing data structures? [cite: 546]

[cite_start]10. Chapter Summary [cite: 547]
-------------------------------------------

**Key Concepts:** [cite_start]Variables, data types, expressions, and
operators form the core foundation of all programming logic. [cite: 547]
[cite_start]Understanding these allows you to manipulate, compare, and
transform data safely and efficiently. [cite: 548]

**Connection to Upcoming Topics:** [cite_start]These
principles—especially types, conversions, and operators—directly support
the next chapter on collections (lists, tuples, dicts) and concrete data
structures such as arrays, stacks, and queues. [cite: 549]
[cite_start]You’ll use the operators introduced here to perform
indexing, slicing, membership checks, and hash-based lookups within
those collections. [cite: 550]

[cite_start]Review (11/05/2025) [cite: 551]

+-----------------------------------+-----------------------------------+
| New Topic                         | Expectation/Criteria              |
+===================================+===================================+
| **1 Flow & Clarity**              | [cite_start]\ **Lesson follows a  |
|                                   | logical structure:** • Intro•     |
|                                   | Concept• Code examples• Practice• |
|                                   | ReflectionEach section            |
|                                   | transitions smoothly. [cite: 552] |
+-----------------------------------+-----------------------------------+
| **2 Completeness**                | [cite_start]\ **All required      |
|                                   | sections:** • Objectives•         |
|                                   | Materials• Outline• Reflection•   |
|                                   | Assessment• Homework/Further      |
|                                   | reading [cite: 552]               |
+-----------------------------------+-----------------------------------+
| **3 Continuity**                  | [cite_start]\ **Connects          |
|                                   | explicitly to prior lessons** and |
|                                   | previews how it prepares for the  |
|                                   | next. [cite: 552]                 |
+-----------------------------------+-----------------------------------+
| **4 Timing**                      | [cite_start]\ **Time estimates    |
|                                   | per section are realistic** and   |
|                                   | sum to ~60-75 min. [cite: 552]    |
+-----------------------------------+-----------------------------------+
| **1 Clarity**                     | **Objectives follow Bloom’s       |
|                                   | taxonomy**, including verbs such  |
|                                   | as evaluate. [cite_start]Avoid    |
|                                   | vague verbs like “understand”.    |
|                                   | [cite: 553]                       |
+-----------------------------------+-----------------------------------+
| **2 Alignment**                   | [cite_start]\ **Objectives align  |
|                                   | with assessments.** [cite: 554]   |
+-----------------------------------+-----------------------------------+
| **3 Scope**                       | [cite_start]\ **Objectives are    |
|                                   | neither too broad nor too         |
|                                   | narrow.** [cite: 555]             |
+-----------------------------------+-----------------------------------+
| **1 Technical Correctness**       | [cite_start]\ **Explanations,     |
|                                   | syntax, and definitions are       |
|                                   | factually and syntactically       |
|                                   | correct.** [cite: 555]            |
+-----------------------------------+-----------------------------------+
| **2 Appropriate Level**           | [cite_start]\ **Explanations are  |
|                                   | accessible yet not overly         |
|                                   | simple.** Any key terms are       |
|                                   | defined. [cite: 556]              |
+-----------------------------------+-----------------------------------+
| **3 Comparisons & Connections**   | [cite_start]\ **New concepts      |
|                                   | relate explicitly to prior        |
|                                   | knowledge.** [cite: 556]          |
+-----------------------------------+-----------------------------------+
| **4 Edge Cases**                  | [cite_start]\ **Lessons include   |
|                                   | at least one edge case/pitfall**  |
|                                   | with deeper understanding. [cite: |
|                                   | 556]                              |
+-----------------------------------+-----------------------------------+
| **1 Active Learning**             | [cite_start]\ **Students do more  |
|                                   | than listen/read:** • Predict     |
|                                   | outcomes• Test hypotheses•        |
|                                   | Discuss results [cite: 557]       |
+-----------------------------------+-----------------------------------+
| **2 Complexity**                  | [cite_start]\ **Examples start    |
|                                   | easy and build in complexity.**   |
|                                   | [cite: 557]                       |
+-----------------------------------+-----------------------------------+
| **3 Discussion**                  | [cite_start]\ **Lesson includes   |
|                                   | at least one meaningful           |
|                                   | discussion/reflection prompt.**   |
|                                   | [cite: 558]                       |
+-----------------------------------+-----------------------------------+
| **4 Optional/Challenge Work**     | [cite_start]\ **Lesson includes   |
|                                   | optional extensions** for those   |
|                                   | interested in deeper learning.    |
|                                   | [cite: 558]                       |
+-----------------------------------+-----------------------------------+
| **5 Relatability & Context**      | [cite_start]\ **Real world        |
|                                   | examples connect to students’     |
|                                   | daily life or professional        |
|                                   | contexts.** [cite: 558]           |
+-----------------------------------+-----------------------------------+
| **6 Flexibility**                 | [cite_start]\ **Activities should |
|                                   | be adaptable to class size, time, |
|                                   | or mode of delivery.** [cite:     |
|                                   | 558]                              |
+-----------------------------------+-----------------------------------+
| **1 Technology**                  | [cite_start]\ **All required      |
|                                   | software and libraries are listed |
|                                   | and accessible.** [cite: 559]     |
+-----------------------------------+-----------------------------------+
| **2 Format**                      | [cite_start]\ **Activities work   |
|                                   | both in-person and remote.**      |
|                                   | [cite: 559]                       |
+-----------------------------------+-----------------------------------+
| **3 Clear Setup**                 | [cite_start]\ **Setup steps are   |
|                                   | concise and beginner friendly.**  |
|                                   | [cite: 559]                       |
+-----------------------------------+-----------------------------------+
| **4 Instructor Notes**            | [cite_start]\ **Each lesson       |
|                                   | includes a teacher guide**        |
|                                   | suggesting adaptations and        |
|                                   | potential challenges. [cite: 560] |
+-----------------------------------+-----------------------------------+
| **1 Guided Practice**             | [cite_start]\ **Includes 2-3      |
|                                   | practice problems directly tied   |
|                                   | to objectives.** [cite: 561]      |
+-----------------------------------+-----------------------------------+
| **2 Independent/Challenge Work**  | [cite_start]\ **Includes at least |
|                                   | one coding task that requires     |
|                                   | applying skills** (not just       |
|                                   | copying) or a challenging         |
|                                   | task/concept. [cite: 561]         |
+-----------------------------------+-----------------------------------+
| **3 Reflection Prompts**          | [cite_start]\ **Questions at the  |
|                                   | end of the lesson encourage       |
|                                   | reasoning/metacognition.** [cite: |
|                                   | 561]                              |
+-----------------------------------+-----------------------------------+
| **4 Assessment**                  | [cite_start]\ **Homework should   |
|                                   | directly assess lesson            |
|                                   | objectives.** [cite: 561]         |
+-----------------------------------+-----------------------------------+
