===================================
Lesson 7: Modules & Variable Scope
===================================

**Reviewer:** (NM Nazari, Mujtaba) - I am not sure how we can put these
two concepts beside each other. Teaching the variable in the basic
concept as we have in Java (which may not apply in Python), and to
create the object of a class, and storing the return object from a
class, all of them are covered under this topic or not. I suggest that
we move this topic in the early chapters if we basically mean in the
basic concept. If this concept is more related to the object of a class,
or a return type we can cover that here, though it will a little hard to
grasp for students starting to learn programming.

**Reviewer:** Jason for (EB Eslami, Behnaz)

Per the Guidelines for Content, Lesson 7 needs the following sections
are missing:

**Prerequisite section**

**Estimated time or time breakdown**

**Next steps**

The rest of the content looks good. I just addressed (Luce, Jason)
comments!

**Owner:** (EB Eslami, Behnaz)

Chapter Overview
----------------

As programs grow larger, you can’t fit everything neatly into one file.
Imagine trying to build an entire game, web app, or data-structure
library inside a single Python script—it would quickly become messy and
nearly impossible to manage.

To solve this, programmers use **modules**: separate files that organize
code into meaningful parts.

Module allows us to group related functions, classes, and constants
together so we can reuse them later, share them with others, and debug
them easily. They also create **namespaces**, which determine how and
where variables can be accessed.

In this lesson, you’ll learn how modular programming keeps code clean
and manageable, how **scope** defines the visibility of variables, and
how both concepts connect to building reusable **data-structure
components**.

Lesson Goals
------------

By the end of this chapter, students will be able to:

- Explain how modules organize Python programs into logical components.
- Describe how scope determines variable accessibility and lifetime.
- Apply the LEGB rule to resolve variable references correctly.
- Use global and nonlocal declarations when modifying external
  variables.
- Structure multi-file data-structure implementations using modules.
- Debug common scoping and import-related issues.

Materials & Setup
-----------------

Required:
~~~~~~~~~

- Python 3.x (VS Code, PyCharm, or any text editor + terminal)
- A project folder for multi-file exercises
- Standard library only (no external packages needed)
- Optional: starter template with example module structure

Setup (students):
~~~~~~~~~~~~~~~~~

1. Create a new project folder (e.g., lesson7_modules)
2. Inside, create at least two Python files: main.py and utilities.py
3. Test your setup by writing a simple function in utilities.py and
   importing it into main.py
4. Run python main.py to confirm your environment works

**Instructor Notes:**

- Large classes: Live-code the import examples, then assign pair
  programming for the modular data-structure exercise
- Short on time? Focus on Sections 1–4 (modules, imports, scope, LEGB)
  in class—assign Sections 6–8 (organizing projects, debugging,
  integration) as homework
- Common pitfall: Students often struggle with relative imports and
  circular dependencies. Prepare troubleshooting examples
- The next chapter (APIs and Tkinter) will build on modular design by
  creating multi-file GUI applications

Outline & Timing
----------------

======= ===============================================
Segment Min
======= ===============================================
1       Continuity Bridge & Introduction
2       Why Modules Matter & Import Basics
3       Understanding Scope & LEGB Rule
4       Global, Nonlocal & Variable Lifetime
5       Organizing Multi-File Projects
6       Debugging & Common Errors
7       Guided Practice: Build a Modular Data Structure
8       Reflection & Summary
9       Total
======= ===============================================

If time is tight: Cover Sections 1–4 thoroughly in class (modules,
imports, scope, LEGB) and assign Sections 6–8 (project organization,
debugging, integration) as homework with the challenge exercise. The
next chapter introduces APIs and GUIs, which will heavily rely on
modular design principles.

Continuity Bridge
-----------------

**Previously**: We mastered **functions**—how to define them, pass
arguments, return values, and use them to break down complex problems
into manageable pieces.

**Today**: We will learn how to organize those functions (and classes)
into separate files called **modules**, understand how Python manages
variable visibility through **scope**, and structure **multi-file
projects** that are clean, reusable, and easy to maintain.

**Next**: We will apply modular design principles to build **GUI
applications** with Tkinter and interact with external web services
through **APIs**—combining backend logic with frontend interfaces.

1. Why Modules Matter
---------------------

What is a Module?
~~~~~~~~~~~~~~~~~

A module is simply a Python file (.py) that contains related
code—functions, classes, and variables—that you can reuse elsewhere.

.. code:: python

   # math_utils.py
   def add(a, b):
       return a + b

You can now import and use it in another file:

.. code:: python

   import math_utils
   print(math_utils.add(3, 4)) # Output: 7

This is modular programming in action.

Why Use Modules?
~~~~~~~~~~~~~~~~

1. **Reusability** – Write once, use anywhere.

   For instance, a sorting function defined in one file can be used in
   multiple data-structure classes.

2. **Maintainability** – If something breaks, you know exactly where to
   look.

3. **Readability** – Smaller files are easier to read and understand.

4. **Teamwork** – In large systems, each developer can work on separate
   modules independently.

5. **Abstraction** – You can hide implementation details inside a module
   and only expose the interface (functions/classes) others need.

Connection to Data Structures
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Think of how you might organize your data-structure library:

::

   datastructures/
   [ ] node.py
   [ ] linkedlist.py
   [ ] stack.py
   [ ] queue.py

Each file is a module with its own purpose. Together they form a
complete, well-structured package. This modular design helps you reuse
the same Node class in multiple structures.

2. Importing and Using Modules
------------------------------

Python lets you access code from other modules using the import
statement.

Basic Import Patterns
~~~~~~~~~~~~~~~~~~~~~

======================= =====================
Syntax                  Example
======================= =====================
import module           import math
from module import name from math import sqrt
import module as alias  import numpy as np
from module import \*   from math import \*
======================= =====================

How Python Finds Modules
~~~~~~~~~~~~~~~~~~~~~~~~

When you run ``import something``, Python looks in:

1. The current directory (where your script runs).
2. The Python standard library.
3. Any directories listed in ``sys.path``.

If it doesn’t find the module, you’ll get an ``ImportError``.

**name** and **main**
~~~~~~~~~~~~~~~~~~~~~

Every Python file has a special variable called ``__name__``.

- When a file runs directly, ``__name__ equals "__main__"``.
- When it’s imported, \`\ **name** equals the module’s name.

.. code:: python

   # greetings.py
   def hello():
       print("Hello!")

   if __name__ == "__main__":
       hello() # Runs only when executed directly

If you import ``greetings`` from another file, the code inside the
``if __name__ == "__main__"`` block won’t run—perfect for separating
test code from reusable logic.

Best Practices
~~~~~~~~~~~~~~

- Import only what you need.
- Avoid from module import \*—it clutters the namespace.
- Use clear names and module aliases for readability.

3. Understanding Scope
----------------------

What Is Scope?
~~~~~~~~~~~~~~

Scope determines where a variable exists and where it can be accessed.

When you use a variable name, Python looks for it in a specific order
known as the LEGB rule:

1. Local (L) — Inside the current function.
2. Enclosing (E) — Inside any enclosing functions.
3. Global (G) — At the top level of the module.
4. Built-in (B) — Python’s built-in names, like len or print.

.. code:: python

   x = 10 # global
   def outer():
       x = 20 # enclosing
       def inner():
           x = 30 # local
           print(x)
       inner()
   outer() # prints 30

Python searches from local outward until it finds the variable.

Variable Shadowing
~~~~~~~~~~~~~~~~~~

If a variable in a smaller scope has the same name as one in a larger
scope, it shadows the outer variable.

.. code:: python

   x = 5
   def demo():
       x = 10
       print(x) # prints 10, not 5

Shadowing can cause confusion, so always use descriptive names.

Inspecting Scopes
~~~~~~~~~~~~~~~~~

You can explore variable scopes using built-in functions:

- **locals()** → shows local variables.
- **globals()** → shows global variables.
- **dir()** → lists all names defined in a given scope.

4. Global and Nonlocal Variables
--------------------------------

Sometimes you need to modify variables from another scope.

Global Variables
~~~~~~~~~~~~~~~~

Defined at the top of the file and accessible anywhere in the module.

.. code:: python

   count = 0

   def increment():
       global count
       count += 1

   increment()
   print(count) # Output: 1

Without the **global** keyword, Python would assume **count** is a new
local variable.

Nonlocal Variables
~~~~~~~~~~~~~~~~~~

Used in nested functions to access variables from the enclosing (not
global) scope.

.. code:: python

   def outer():
       x = 5
       def inner():
           nonlocal x
           x += 1
       inner()
       print(x) # Output: 6

Use nonlocal when you want inner functions to modify variables from
their parent function.

Good Practices
~~~~~~~~~~~~~~

- Avoid overusing global and nonlocal.
- Prefer returning values from functions instead of modifying external
  state.
- Keep variables local to reduce side effects and improve clarity.

5. Variable Lifetime and Memory Behavior
----------------------------------------

Every variable has a lifetime, the period it exists in memory.

- Local variables: created when a function runs and destroyed when it
  ends.
- Global/module variables: live as long as the program runs.
- Imported module variables: remain cached in memory until the
  interpreter exits.

Mutable vs Immutable Types
~~~~~~~~~~~~~~~~~~~~~~~~~~

- Mutable: lists, dictionaries, sets → can be changed.
- Immutable: numbers, strings, tuples → can’t be changed directly.

Understanding this is crucial in data structures—modifying a shared list
affects every module that references it.

Garbage Collection
~~~~~~~~~~~~~~~~~~

Python automatically frees memory for objects no longer referenced.

You don’t usually manage memory manually, but being aware of references
helps avoid unwanted persistence.

6. Organizing Data-Structure Projects
-------------------------------------

In real projects, data structures are divided into multiple files and
packages.

::

   datastructures/
   - __init__.py
   - node.py
   - linkedlist.py
   - stack.py
   - utils.py

- node.py → defines the Node class.
- linkedlist.py → uses Node to implement LinkedList.
- stack.py → reuses LinkedList internally.
- utils.py → provides helper methods (printing, testing).

The file **init**.py marks the folder as a Python package and can
control what’s imported when you run:

.. code:: python

   from datastructures import linkedlist

Avoiding Circular Imports
~~~~~~~~~~~~~~~~~~~~~~~~~

A circular import happens when two modules depend on each other:

1 A imports B 2 B imports A

This causes errors because Python can’t finish loading either file.

**Solution:** move shared functions into a third utility module or
import inside functions instead of at the top.

7. Debugging Scope-Related Errors
---------------------------------

Here are common scoping and import problems:

================= ============================================
Error             Meaning
================= ============================================
NameError         Variable not defined anywhere
UnboundLocalError Variable assigned before defined; use global
ImportError       Python can’t find the module
================= ============================================

Debugging Tips
~~~~~~~~~~~~~~

- Use ``print()`` or ``pdb`` to trace variable values.
- Inspect active namespaces using ``globals()`` or ``locals()``.
- Test each module independently before integrating.
- Add clear comments about variable purpose and scope.

8. Integrating Modules with Data Structures
-------------------------------------------

When you start implementing data structures, each module can represent
one logical part.

**Example**

- node.py → defines Node class
- linkedlist.py → defines LinkedList class using Node
- stack.py → builds Stack using LinkedList

.. code:: python

   # linkedlist.py
   from datastructures.node import Node

   class LinkedList:
       def __init__(self):
           self.head = None

This modular setup allows you to reuse code, debug specific modules, and
extend functionality without rewriting existing parts.

Encapsulation and Reusability
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To control what’s exposed, define:

.. code:: python

   __all__ = ['LinkedList', 'Node']

This keeps internal helper functions private, preventing accidental
misuse.

Encapsulation—hiding data and exposing only necessary interfaces—is a
core design principle that supports scalability and reliability in
data-structure systems.

9. Chapter Summary
------------------

In this chapter, you learned that:

- Modules organize large programs into reusable, logical components.
- Scope determines where variables live and how long they exist.
- Python follows the LEGB lookup rule to resolve variable names.
- global and nonlocal provide controlled access to outer scopes.
- Understanding variable lifetime helps prevent bugs and memory issues.
- Modular design makes complex data-structure projects cleaner, faster
  to debug, and easier to maintain.

Next, you’ll apply these ideas to object-oriented programming—learning
how classes and modules together create powerful, reusable systems.

10. Review Questions and Exercises
----------------------------------

- What is a module, and why is it useful in large projects?
- Explain the LEGB rule using your own example.
- What is the difference between global and nonlocal variables?
- Why do circular imports happen, and how can you fix them?
- Design a modular layout for a Queue or Linked List project using
  multiple files.
- In your own words, describe how modular programming improves code
  readability and teamwork.
- (Challenge) Write a small two-file project: one file defines a helper
  function, and the second file imports and uses it. Observe how the
  \_\_\_\_\_\_ == “**main**” pattern behaves.
