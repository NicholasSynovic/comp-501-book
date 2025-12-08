==========================================
Lesson 4: Organization Of Data Is Awesome
==========================================

**Owner:** SN Synovic, Nicholas **Reviewer:** Luce, Jason

Introduction
------------

[cite_start]In earlier lessons, we learned how to organize individual
pieces of data such as strings, integers, floats, and booleans[cite:
398]. [cite_start]These data types are the basic building blocks of all
software[cite: 399]. [cite_start]Without them, a computer would not be
able to represent text, numbers, measurements, or images[cite: 400].

[cite_start]However, most real-world programs need to work with many
pieces of data at once[cite: 401]. [cite_start]A biologist, for
instance, might need to compare several DNA sequences, each represented
as a string[cite: 402]. [cite_start]A teacher might need to calculate
grades for every student in a class[cite: 403]. [cite_start]A zookeeper
might record how many animals belong to each species[cite: 404].
[cite_start]If we created a separate variable for every DNA string,
student grade, or animal type, our programs would quickly become messy
and inefficient[cite: 405].

[cite_start]To avoid this, we can group related data together using data
structures[cite: 406]. [cite_start]In this lesson, we will learn how to
organize data efficiently using Python’s built-in data structures[cite:
407]. [cite_start]We will explore arrays, lists, tuples, sets,
dictionaries, and combinations of these structures[cite: 408].
[cite_start]Data structures allow us to store, modify, and manage
collections of data efficiently, making them just as essential as the
basic data types we have already studied[cite: 409].

Objectives
----------

[cite_start]By the end of this lesson, you will understand the purpose
and structure of Python’s main data structures: arrays, lists, tuples,
sets, and dictionaries[cite: 411]. [cite_start]You will be able to
recognize when and why each type of structure is used[cite: 412].
[cite_start]These data structures form the foundation of nearly all
Python programs and are also common in many other programming
languages[cite: 413, 414].

Materials (2)
-------------

???

Outline (2)
-----------

???

Lesson Content
--------------

[cite_start]Each data structure in this lesson is introduced through
both theoretical and practical examples[cite: 420]. [cite_start]You will
first learn the concept behind each structure, including what makes it
unique and when it is most useful[cite: 421]. [cite_start]You will then
see code examples that demonstrate how each structure works in
Python[cite: 422]. [cite_start]Finally, you will complete practice
problems that allow you to apply these concepts in real programming
tasks[cite: 423].

[cite_start]By the end of the lesson, you will appreciate how each data
structure helps us write programs that are clear, efficient, and
powerful[cite: 424].

List
----

**Introduction:** Lists are everywhere in our daily lives.
[cite_start]We keep grocery lists, inventory lists, and contact
lists—examples that help us organize related information[cite: 426].
[cite_start]In Python, a list is a flexible, type-agnostic data
structure that allows you to store multiple pieces of data in a single
variable[cite: 427]. [cite_start]This means you can store names of
foods, item counts, and phone numbers together in one container and
easily loop through them[cite: 428].

[cite_start]\ **Concept:** A list is a data structure that lets you
store an arbitrary number of items of any data type[cite: 429].
[cite_start]Each element in a list is stored in a specific position
called an index[cite: 430]. [cite_start]Indexing in Python starts at 0
and continues up to :math:`n-1` where :math:`n` is the total number of
elements in the list[cite: 431]. [cite_start]Lists are a built-in Python
data structure - you don’t need to import anything to use them[cite:
432].

**Code Examples:**

**Creating Lists:**

.. code:: python

   # Creating an empty list
   empty_list: list = []
   print(empty_list)

   # Creating a list of integers
   list_of_integers: list[int] = [0, 1, 2, 3, 4, 5]
   print(list_of_integers)

   # Creating a list of integers and strings

..

   [cite_start]What potential issues or complexities might arise when
   mixing different data types in the same list? [cite: 445, 446]

**Getting The Length Of A List:**

.. code:: python

   # Print the length of each list
   print(len(list_of_integers))

..

   [cite_start]How much does adding a boolean or a float increase the
   length of a list? [cite: 453]

**Indexing A List:**

.. code:: python

   # Print the first element in the list
   print(list_of_integers[0])

   # Print the last element in the list
   print(list_of_integers[-1])

..

   [cite_start]Why does Python start counting elements at index 0
   instead of 1? [cite: 463]

**Slicing A List:**

.. code:: python

   # Get all values between the first and fifth element
   chunk: list = mixed_list[0:5]
   print(chunk)

   # Get every second element between the first and fifth

..

   [cite_start]When slicing lists, are the start and end values
   inclusive or exclusive? [cite: 472]

**Adding Elements:**

.. code:: python

   # Add an integer to the end of the list of integers
   list_of_integers.append(6)
   print(list_of_integers)

   # Adding the contents of two lists together
   mixed_list.extend(list_of_integers)
   print(mixed_list)

   # Adding an element at a specific index

..

   [cite_start]Does extending ``mixed_list`` also modify
   ``list_of_integers``? [cite: 485]

**Removing Elements:**

.. code:: python

   # Remove the 0th index element
   del mixed_list[0]
   print(mixed_list)

   # Remove the last index element
   del mixed_list[-1]
   print(mixed_list)

   # Remove the 5th index element, but store it to a variable
   print(fifth_index_element, mixed_list)

..

   How would you remove the first element of ``mixed_list``?
   [cite_start]The last one? [cite: 498]

**Modifying Elements:**

.. code:: python

   # Change the 0th element of list_of_integers
   list_of_integers[0] = 100
   print(list_of_integers)

   # Change the 4th element to be the sum of all other elements

..

   [cite_start]When you modify one element of a list, are other elements
   affected? [cite: 507]

**Sorting A List:**

.. code:: python

   # Reverse a list
   mixed_list = mixed_list[::-1]
   print(mixed_list)

   # Sort a list

..

   Can we sort a list that contains both strings and integers? What
   about integers and floats? [cite_start]Booleans and integers? [cite:
   517, 518]

**Finding The Index Of A Specific Element By Value**

.. code:: python

   # Find the first index of the value "hello"
   print(mixed_list.index("hello"))

..

   If a list has multiple elements with the same value, how can we find
   the second one? Or the last one? [cite_start]Hint: You can still use
   the ``.index()`` method! [cite: 525, 526, 527]

**Practice:**

- [cite_start]Create a list of floating-point numbers and sort it[cite:
  529].
- Create a list of booleans, sort it, and then reverse the order.
  [cite_start]Show your work[cite: 530, 531].
- [cite_start]How can you check if two lists are the same size? [cite:
  532]

[cite_start]\ **Reflection:** Lists are one of the most common and
flexible data structures in Python[cite: 533]. [cite_start]They allow us
to store an arbitrary number of elements in a single container and
process them programmatically[cite: 534]. However, lists are not
perfect. [cite_start]They do not guarantee uniqueness, they can contain
elements of mixed types, and searching for specific elements can become
slow if you don’t know their exact index[cite: 535].
[cite_start]Understanding how lists work is an essential step toward
writing efficient and organized Python programs[cite: 536].

Arrays
------

**Introduction:** Arrays are a cornerstone of computing and mathematics.
[cite_start]They appear in everything from spreadsheets and image data
to physics simulations and financial models[cite: 538]. [cite_start]In
Python, arrays are similar to lists in that they store multiple elements
in one container[cite: 539]. [cite_start]However, unlike lists, arrays
are type-specific—they can only store data of a single type (for
example, all integers or all floats)[cite: 540]. [cite_start]This design
makes arrays more efficient for numerical operations, especially when
working with large datasets that use the same data type[cite: 541].

[cite_start]\ **Concept:** An array is a data structure that stores an
ordered sequence of elements, all of which must be of the same
type[cite: 542]. [cite_start]Each element in the array is stored in a
position called an index, starting at 0 and continuing up to
:math:`n-1`, where :math:`n` is the number of elements[cite: 543, 544].
[cite_start]Arrays are not built into Python by default—they are defined
in a module called ``array``\ [cite: 545, 546]. [cite_start]A module is
a file that contains reusable Python code (such as functions, classes,
or constants) that you can import into your program to extend its
functionality[cite: 547]. Before using arrays, you must import the
module:

.. code:: python

   import array

[cite_start]Once imported, you can create arrays and use their methods
to store and manipulate numerical data efficiently[cite: 552, 553].

**Code Examples**

**Creating Arrays:**

.. code:: python

   import array
   # Arrays are type-specific.
   # The first argument ('i' for integers, 'f' for floats)

   # Creating an empty array of integers
   empty_array: array.array = array.array('i')
   print(empty_array)

   # Creating an array of integers
   array_of_integers: array.array = array.array('i', [1, 2, 3])
   print(array_of_integers)

   # Creating an array of floating-point numbers
   array_of_floats: array.array = array.array('f', [0.1, 0.2])

..

   [cite_start]What would happen if you tried to store a string in
   ``array_of_integers``? [cite: 572, 573]

**Getting The Length Of An Array:**

.. code:: python

   # Print the length of each array
   print(len(array_of_integers))

..

   [cite_start]How does the ``len()`` function behave compared to when
   it’s used with a list? [cite: 582]

**Indexing An Array:**

.. code:: python

   # Print the first element
   print(array_of_integers[0])

   # Print the last element
   print(array_of_integers[-1])

..

   [cite_start]Why does Python start counting elements from index 0
   instead of 1? [cite: 591]

**Slicing An Array:**

.. code:: python

   # Get all values between the first and fourth element
   chunk: array.array = array.array('i', array_of_integers[0:4])
   print(chunk)

   # Get slices with steps
   chunk_2 = array_of_integers[0:5:2]
   print(chunk_2)

..

   [cite_start]When slicing arrays, are the start and end positions
   inclusive or exclusive? [cite: 601]

**Adding Elements:**

.. code:: python

   # Append a new element
   array_of_integers.append(6)
   print(array_of_integers)

   # Extend the array with another array
   array_of_integers.extend(array.array('i', [7, 8, 9]))
   print(array_of_integers)

..

   [cite_start]How does inserting an element affect the array’s existing
   indexes? [cite: 611]

**Removing Elements:**

.. code:: python

   # Remove an element by index
   removed_value: int = array_of_integers.pop(3)
   print(removed_value, array_of_integers)

   # Remove an element by value

..

   [cite_start]What happens if you try to remove a value that doesn’t
   exist in the array? [cite: 621]

**Modifying Elements:**

.. code:: python

   # Change the 0th element
   array_of_integers[0] = 100
   print(array_of_integers)

   # Change the last element to the sum of all others

..

   [cite_start]If all elements must be of the same type, what happens if
   you try to assign a float to an integer array? [cite: 630, 631]

**Searching For Elements:**

.. code:: python

   # Find the index of a specific value
   print(array_of_integers.index(4))

..

   [cite_start]If multiple elements have the same value, which one does
   ``.index()`` return? [cite: 636]

**Practice**

- [cite_start]Create an array of floats and append two new numbers to
  it[cite: 638].
- [cite_start]Remove one of the elements by value and print the updated
  array[cite: 639].
- [cite_start]Create an array of integers and compute the sum of all its
  elements[cite: 640].
- [cite_start]Slice your integer array to get the middle half of the
  elements[cite: 641].

[cite_start]\ **Reflection:** Arrays are a powerful and memory-efficient
data structure in Python, especially for numerical data[cite: 642].
[cite_start]They allow you to store a collection of same-type elements
and perform operations on them quickly[cite: 643]. However, arrays have
limitations compared to lists. [cite_start]They cannot store mixed data
types, and they lack some of the flexibility and convenience of lists,
such as easy sorting or handling non-numeric types[cite: 644].
[cite_start]Understanding arrays provides a foundation for working with
more advanced numerical libraries in Python, such as NumPy, which builds
upon and extends these ideas for large-scale scientific computing[cite:
645].

Tuples
------

[cite_start]\ **Introduction:** Tuples are a way to store multiple
pieces of data together that should not change[cite: 647].
[cite_start]In everyday life, you might think of a tuple like a home
address: it has a fixed order (street, city, state, zip code), and
although you can read or copy it, you generally don’t change it once
it’s defined[cite: 648]. [cite_start]In Python, tuples are similar to
lists, but they are immutable, meaning their contents cannot be changed
after creation[cite: 650]. [cite_start]This makes tuples ideal for
representing data that should remain constant[cite: 651].

[cite_start]\ **Concept:** A tuple is an ordered, immutable sequence of
elements[cite: 652]. [cite_start]Like lists, tuples can contain elements
of any data type and can be indexed starting at 0[cite: 653]. However,
once a tuple is created, its elements cannot be modified, added, or
removed. [cite_start]Tuples are a built-in Python data structure, so you
don’t need to import any module to use them[cite: 654].

**Code Examples:**

**Creating Tuples:**

.. code:: python

   # Creating an empty tuple
   empty_tuple: tuple = ()
   print(empty_tuple)

   # Creating a tuple of integers
   tuple_of_integers: tuple[int, ...] = (1, 2, 3, 4, 5)
   print(tuple_of_integers)

   # Creating a tuple with mixed data types
   mixed_tuple: tuple[int, str, float] = (1, "apple", 3.14)
   print(mixed_tuple)

   # Creating a single-element tuple (note the comma!)
   single_tuple: tuple[int] = (42,)
   print(single_tuple)

..

   Why do we need a comma when creating a tuple with just one element?

**Indexing A Tuple:**

.. code:: python

   # Accessing elements
   print(tuple_of_integers[0]) # First element
   print(tuple_of_integers[-1]) # Last element

..

   How does tuple indexing differ from list indexing?

**Slicing A Tuple:**

.. code:: python

   # Get a portion of the tuple
   sub_tuple: tuple[int, ...] = tuple_of_integers[1:4]
   print(sub_tuple)

..

   Are slices of tuples also immutable?

**Tuple Packing and Unpacking:**

.. code:: python

   # Packing multiple values into a tuple
   person: tuple[str, int, str] = ("Alice", 30, "Engineer")

   # Unpacking tuple elements into variables
   name, age, profession = person
   print(name, age, profession)

..

   What happens if you try to unpack a tuple into fewer or more
   variables than it contains?

**Tuple Immutability:**

.. code:: python

   # Attempting to modify a tuple element (this causes an error)
   # tuple_of_integers[0] = 100

..

   Why is immutability useful when storing data that shouldn’t change?

**Practice:**

- [cite_start]Create a tuple of your favorite three colors and print the
  second one[cite: 660].
- Create a tuple that stores your (name, age, hometown).
  [cite_start]Unpack it into three variables and print them[cite: 661].
- Try to modify one of your tuple’s elements. [cite_start]What happens?
  [cite: 662]

[cite_start]\ **Reflection:** Tuples provide a safe, efficient way to
store ordered collections of data that should not change[cite: 663].
[cite_start]Their immutability helps prevent accidental modification of
important values[cite: 664]. [cite_start]However, since tuples cannot be
modified, they lack methods like ``.append()`` or ``.remove()`` that
lists have[cite: 665]. [cite_start]They’re ideal for fixed data, like
coordinates, records, or database keys, where stability matters more
than flexibility[cite: 666].

Sets
----

[cite_start]\ **Introduction:** Sets are all around us in everyday
life[cite: 667]. [cite_start]Think about a collection of unique items,
such as a list of student IDs, a group of distinct species in a park, or
all the colors in a painting[cite: 668]. [cite_start]In these examples,
duplicates don’t make sense — an ID, species, or color only needs to
appear once[cite: 669]. [cite_start]In Python, a set is a data structure
designed to hold unique, unordered elements[cite: 670]. [cite_start]Sets
are particularly useful for removing duplicates, checking membership,
and performing mathematical operations like unions and
intersections[cite: 671].

[cite_start]\ **Concept:** A set in Python is an unordered, mutable, and
type-agnostic collection that automatically removes duplicate
elements[cite: 672]. [cite_start]Each item in a set must be immutable
(like a string, number, or tuple), but the set itself can be modified —
you can add or remove elements freely[cite: 673]. [cite_start]Sets are a
built-in Python data structure, so they don’t require any imports to
use[cite: 674].

**Code Examples:**

**Creating Sets:**

.. code:: python

   # Creating an empty set
   empty_set: set = set()
   print(empty_set)

   # Creating a set of integers
   set_of_integers: set[int] = {1, 2, 3, 4, 5}
   print(set_of_integers)

   # Creating a set with duplicate values
   set_with_duplicates: set[int] = {1, 2, 2, 3, 4, 4, 5}
   print(set_with_duplicates)

..

   What happens to the duplicates when you print the set?

**Adding Elements:**

.. code:: python

   # Add a single element
   set_of_integers.add(6)
   print(set_of_integers)

   # Add multiple elements from another set
   set_of_integers.update({7, 8, 9})
   print(set_of_integers)

**Removing Elements:**

.. code:: python

   # Remove an element
   set_of_integers.remove(3)
   print(set_of_integers)

   # Remove an element that might not exist safely
   set_of_integers.discard(10)
   print(set_of_integers)

   # Remove and return an arbitrary element
   removed_value = set_of_integers.pop()
   print(removed_value, set_of_integers)

..

   What happens if you use ``.remove()`` on an element that doesn’t
   exist in the set?

**Checking Membership:**

.. code:: python

   # Check if an element exists in the set
   print(5 in set_of_integers)
   print(10 in set_of_integers)

..

   Why might checking membership in a set be faster than checking
   membership in a list?

**Set Operations:**

.. code:: python

   # Define two sets for operations
   A: set[int] = {1, 2, 3, 4}
   B: set[int] = {3, 4, 5, 6}

   # Union - combines all elements from both sets (no duplicates)
   union_set: set[int] = A.union(B)
   print("Union:", union_set)

   # Intersection - elements common to both sets
   intersection_set: set[int] = A.intersection(B)
   print("Intersection:", intersection_set)

   # Difference - elements in A but not in B
   difference_set: set[int] = A.difference(B)

..

   Which of these operations would you use to find elements unique to
   one dataset?

**Clearing a Set:**

.. code:: python

   # Remove all elements from the set
   set_of_integers.clear()
   print(set_of_integers)

..

   What happens when you try to print a cleared set?

**Practice:**

- Create two sets: one for even numbers from 1–10 and one for odd
  numbers from 1–10. [cite_start]Find their union, intersection, and
  symmetric difference[cite: 684, 685].
- Create a set of city names. [cite_start]Add three new cities and
  remove one[cite: 685].
- [cite_start]Check if a specific city exists in the set before removing
  it[cite: 686].
- [cite_start]Use ``.update()`` to add multiple elements to your set at
  once[cite: 687].

[cite_start]\ **Reflection:** Sets are an efficient way to store
collections of unique, unordered data[cite: 688]. [cite_start]They excel
at removing duplicates and performing mathematical operations that
compare relationships between groups of items[cite: 689].
[cite_start]Their ability to perform fast membership checks makes them
ideal for filtering data and validating uniqueness[cite: 690].
[cite_start]However, sets cannot store mutable elements like lists or
dictionaries, and their unordered nature means you cannot index or slice
them like lists or tuples[cite: 691]. [cite_start]Despite these
limitations, sets are an essential data structure for organizing
distinct data efficiently in Python[cite: 692].

Dictionaries
------------

[cite_start]\ **Introduction:** Dictionaries are one of Python’s most
powerful data structures[cite: 693]. [cite_start]They let you store
information as key-value pairs, similar to how you might look up a word
in a real dictionary — the word is the key, and its definition is the
value[cite: 694]. [cite_start]For example, you might store a person’s
name as the key and their phone number as the value[cite: 695].
[cite_start]Dictionaries are perfect for when you need to quickly find,
update, or organize data based on a specific label[cite: 696].

[cite_start]\ **Concept:** A dictionary (``dict``) is an unordered,
mutable data structure that maps unique keys to values[cite: 697].
[cite_start]Each key must be unique and immutable (such as a string,
number, or tuple), while values can be of any data type[cite: 698].
[cite_start]Dictionaries are built into Python, so you do not need to
import a module to use them[cite: 699].

**Code Examples:**

**Creating Dictionaries:**

.. code:: python

   # Creating an empty dictionary
   empty_dict: dict = {}
   print(empty_dict)

   # Creating a dictionary with string keys
   person: dict[str, str | int] = {
       "name": "Alice",
       "age": 30,
       "city": "Chicago"
   }
   print(person)

   # Creating a dictionary with mixed key types
   mixed_dict: dict[int | str, float | str] = {
       1: 3.14
   }

..

   What happens if you create a dictionary with two identical keys?

**Accessing Elements:**

.. code:: python

   # Accessing values by key
   print(person["name"])
   print(person["city"])

**Adding and Modifying Elements:**

.. code:: python

   # Add a new key-value pair
   person["occupation"] = "Engineer"
   print(person)

   # Modify an existing value
   person["age"] = 31
   print(person)

..

   How does Python handle updating a value for an existing key?

**Removing Elements:**

.. code:: python

   # Remove a specific key
   del person["city"]
   print(person)

   # Remove and return a key-value pair
   age_value = person.pop("age")
   print(age_value, person)

..

   What happens if you try to delete a key that isn’t in the dictionary?

**Checking for Keys:**

.. code:: python

   # Check if a key exists
   print("name" in person)
   print("city" in person)

..

   How could this be used to prevent errors when accessing dictionary
   values?

**Getting All Keys, Values, and Items:**

.. code:: python

   # Get all keys
   print(person.keys())

   # Get all values
   print(person.values())

   # Get all key-value pairs
   print(person.items())

..

   These methods return dictionary view objects, which are not lists but
   can be type-cast into them for iteration.

**Iterating Over Dictionaries:**

.. code:: python

   # Convert keys and values to lists for iteration
   keys_list: list[str] = list(person.keys())
   values_list: list[str | int] = list(person.values())

   # Iterate through keys
   for key in keys_list:
       print(key)

   # Iterate through values
   for value in values_list:
       print(value)

   # Iterate through both keys and values
   for key, value in person.items():
       print(key, value)

..

   Why might it be helpful to iterate over items instead of separate key
   or value lists?

**Practice:**

- Create a dictionary of three countries and their capitals.
  [cite_start]Print the capital of one country[cite: 712, 713].
- [cite_start]Add a new country and update one of the existing
  capitals[cite: 713].
- [cite_start]Convert the dictionary’s keys and values into lists and
  print them[cite: 714].
- [cite_start]Loop through your dictionary and print each key-value
  pair[cite: 714].

[cite_start]\ **Reflection:** Dictionaries provide a fast, intuitive way
to store and retrieve data by name or label[cite: 715]. [cite_start]They
are ideal when working with structured data such as configurations, user
information, or any mapping between unique identifiers and their
associated values[cite: 716]. [cite_start]However, dictionaries require
immutable and unique keys, and their order (while preserved in modern
Python versions) should not be relied upon for sorting[cite: 717].
[cite_start]Additionally, when converting keys or values into lists, you
must be mindful of the additional memory used for type casting[cite:
718]. [cite_start]Despite these considerations, dictionaries are one of
Python’s most versatile and essential data structures[cite: 719].

Reflection
----------

[cite_start]Throughout this lesson, we explored several of Python’s most
important data structures—lists, arrays, tuples, sets, and
dictionaries[cite: 720]. [cite_start]Each structure provides a unique
way to organize, store, and manipulate data, giving us the flexibility
to model a wide variety of problems in computing[cite: 721].

[cite_start]Lists and arrays introduced the idea of storing sequences of
values in a single variable[cite: 722]. [cite_start]They showed us how
to group related data, modify it, and access it efficiently[cite: 723].
[cite_start]Lists, being dynamic and flexible, are one of Python’s most
widely used tools[cite: 724]. [cite_start]Arrays, on the other hand, are
more specialized for numerical work where performance and consistency in
data type matter[cite: 725].

Tuples revealed the importance of immutability. [cite_start]Once
created, tuples cannot be changed[cite: 726]. [cite_start]This makes
them ideal for representing fixed collections of data—such as geographic
coordinates, color codes, or database records[cite: 727].
[cite_start]Their immutability makes programs more predictable and helps
protect data from unintended modification[cite: 728].

[cite_start]Sets expanded our understanding by introducing collections
of unique elements[cite: 729]. [cite_start]They allow us to perform
mathematical operations like unions, intersections, and
differences[cite: 730]. [cite_start]Sets are incredibly useful when we
want to remove duplicates, test for membership, or compare data across
multiple collections[cite: 731].

[cite_start]Finally, dictionaries introduced a new level of
structure—mapping keys to values[cite: 732]. [cite_start]This idea
allows us to store relationships between pieces of data, such as student
IDs to grades or usernames to passwords[cite: 733]. [cite_start]By
understanding how to access a dictionary’s items, keys, and values, we
gained the ability to quickly retrieve, update, and iterate through data
in a meaningful way[cite: 734]. [cite_start]We also learned that when
iterating over these components, we often convert them to lists for
easier manipulation[cite: 735].

[cite_start]Together, these data structures form the foundation of how
Python (and most programming languages) manage information[cite: 736].
Lists and arrays group data. Tuples preserve it. Sets refine it.
[cite_start]Dictionaries give it structure and meaning[cite: 737].
[cite_start]Understanding when and why to use each of these structures
is what transforms a beginner into a thoughtful programmer—one who can
design efficient, elegant, and reliable code to solve real-world
problems[cite: 738, 739].

======== THE REST OF THIS COULD BE ADVANCED CONTENT, NOT PREPARED AT
THIS TIME ========= Immutability vs Mutability Introduction Concept Code
Examples Practice Reflection List Comprehension Introduction Concept
Code Examples Practice Reflection Set Comprehension Introduction Concept
Code Examples Practice Reflection Dictionary Comprehension Introduction
Concept Code Examples Practice Reflection Mapping Methods To Lists
Introduction Concept Code Examples Practice Reflection

======== START OF OLD PROSE =======

**1. Introduction: Data Structures in Python (5 min)** **Discussion
Prompt:** When might mutability or immutability be helpful in your code?

**2. Arrays (10 min)** **Concepts:**

- [cite_start]Arrays require the ``array`` module[cite: 742].
- [cite_start]Homogeneous data types (all elements must be the same
  type)[cite: 743].

**Code Demo:** **Notes:**

- [cite_start]\ ``'i'`` means integer array[cite: 743].
- [cite_start]Array operations are efficient but more restrictive than
  lists[cite: 744].

**3. Lists (15 min)** **Concepts:**

- Most common Python sequence type.
- [cite_start]Ordered and mutable[cite: 745].

**Exercise:** [cite_start]Create a list of numbers 1–10, remove all even
numbers, and print the remaining[cite: 746].

**4. Tuples (10 min)** **Concepts:**

- Ordered but immutable.
- [cite_start]Defined with ``()`` instead of ``[]``\ [cite: 747].

**Exercise:** Create a tuple of fruits. [cite_start]Convert it to a
list, remove one fruit, and convert it back[cite: 748].

**5. Sets (15 min)** **Concepts:**

- Unordered, unique elements.
- [cite_start]Great for membership tests and deduplication[cite: 749].

**Exercise:** [cite_start]Given a list with duplicates, convert it to a
set and back to remove duplicates[cite: 750].

**6. Popping and Removing: Comparison Table (5 min)**

=== ========= === ======
New Structure Add Remove
=== ========= === ======
1
2
3
4
=== ========= === ======

**7. For Loop & List Comprehension (15 min)** **Concepts:**

- [cite_start]List comprehensions simplify loops for creating
  lists[cite: 751].

**Examples:**

.. code:: python

   # Traditional loop
   squares = []
   for n in range(10):
       squares.append(n**2)

   # Comprehension
   squares = [n**2 for n in range(10)]

   # Conditional comprehension
   evens = [n for n in range(10) if n % 2 == 0]

**Exercise:** [cite_start]Generate a list of all uppercase letters from
a string using a comprehension[cite: 752].

**8. Mapping Methods to Lists (10 min)** **Concepts:**

- [cite_start]Apply a function to each list element[cite: 753].

**Examples:**

.. code:: python

   def square(x):
       return x ** 2

   nums = [1, 2, 3, 4]
   print(list(map(square, nums)))

**Using lambdas:**

.. code:: python

   print(list(map(lambda x: x * 2, nums)))

**Comprehension equivalent:**

.. code:: python

   [x * 2 for x in nums]

**9. Benchmarking List Operations (10 min)** **Concepts:**

- [cite_start]Compare performance of list operations using
  ``timeit``\ [cite: 754].

**Examples:**

.. code:: python

   import timeit

   print(timeit.timeit("[x for x in range(1000)]", number=1000))
   print(timeit.timeit("list(map(lambda x: x, range(1000)))", number=1000))

**Exercise:** [cite_start]Compare the time of ``append()`` vs list
comprehension for building a list of 10,000 integers[cite: 756].

**10. Strings as Lists (10 min)** **Concepts:**

- Strings are *sequences* of characters, like immutable lists.
- You can index, slice, and iterate over them.

**Examples:**

.. code:: python

   s = "Python"
   print(s[0], s[-1]) # indexing
   print(s[1:4]) # slicing
   for ch in s:
       print(ch)

**Converting between strings and lists:**

.. code:: python

   chars = list(s)
   print(chars)
   joined = "".join(chars)
   print(joined)

**Exercise:** [cite_start]Reverse a string using slicing
(``[::-1]``)[cite: 758].

**11. Summary & Review (5–10 min)** **Discussion Prompts:**

- What’s the main difference between mutable and immutable types?
- [cite_start]When would you use a ``set`` instead of a ``list``? [cite:
  759]
- [cite_start]Why are tuples useful if they can’t be changed? [cite:
  760]

**Optional Homework:**

- [cite_start]Implement a “unique words” counter using a set and string
  splitting[cite: 761].
- [cite_start]Benchmark list vs set membership lookup speed[cite: 762].

3.3 Composite Data Types
~~~~~~~~~~~~~~~~~~~~~~~~

**Lists** [cite_start]Lists are ordered, mutable (changeable)
collections of items[cite: 762]. [cite_start]Think of a list as an array
that can grow or shrink[cite: 763]. [cite_start]Each element has an
index starting from 0[cite: 764]. [cite_start]Lists are fundamental in
programming and especially important for data structures—you will use
lists to implement stacks, queues, and arrays[cite: 764].
[cite_start]Elements in a list can be of different types, though it’s
good practice to keep them consistent[cite: 765].

.. code:: python

   # Creating lists
   numbers = [1, 2, 3, 4, 5]
   mixed = [1, "two", 3.0, True] # Different types
   empty = []

   # Accessing elements
   print(numbers[0]) # Output: 1 (first element)
   print(numbers[2]) # Output: 3 (third element)
   print(numbers[-1]) # Output: 5 (last element)
   print(numbers[-2]) # Output: 4 (second to last)

   # Slicing (creating sublists)
   print(numbers[1:4]) # Output: [2, 3, 4]
   print(numbers[:3]) # Output: [1, 2, 3]

**Tuples** [cite_start]Tuples are ordered, immutable (unchangeable)
collections of items[cite: 767]. [cite_start]Once created, you cannot
modify, add, or remove elements[cite: 768]. [cite_start]Tuples are
useful when you want to ensure data doesn’t accidentally get changed, or
when you need to use a collection as a dictionary key (lists cannot be
keys, but tuples can)[cite: 769]. [cite_start]Tuples use less memory
than lists since Python doesn’t need to allow for resizing[cite: 770].

.. code:: python

   # Creating tuples
   coordinates = (10, 20)
   single_item = (42,) # Comma required for single element
   empty = ()
   rgb_color = (255, 0, 128)

   print(coordinates) # Output: (10, 20)
   print(single_item) # Output: (42,)

   # Accessing elements
   print(coordinates[0]) # Output: 10
   print(coordinates[-1]) # Output: 20

   # Tuples are immutable
   # coordinates[0] = 5 # TypeError: 'tuple' object does not support item assignment

**Dictionaries** [cite_start]Dictionaries are unordered collections of
key-value pairs[cite: 771]. [cite_start]Instead of accessing elements by
position (like in lists), you access them by key[cite: 772].
[cite_start]Dictionaries are incredibly useful in programming and
especially in data structures courses—they are the foundation for hash
tables[cite: 773]. Each key must be unique, and keys are typically
strings or integers. [cite_start]The dictionary efficiently maps keys to
values[cite: 774].

.. code:: python

   # Creating a dictionary
   student = {
       "name": "Alice",
       "age": 20,
       "gpa": 3.8,
       "major": "Computer Science"
   }

   # Accessing values
   print(student["name"]) # Output: Alice
   print(student["age"]) # Output: 20

   # Safe access with default value
   print(student.get("gpa")) # Output: 3.8
   print(student.get("grade", "N/A")) # Output: N/A

**Sets** [cite_start]Sets are unordered collections of unique
elements[cite: 776]. [cite_start]Each element appears only once in a
set—if you add duplicates, the set automatically removes them[cite:
777]. [cite_start]Sets support mathematical operations like union,
intersection, and difference, making them useful for membership testing
and removing duplicates[cite: 778]. [cite_start]Unlike lists and tuples,
sets are not indexed, so you can’t access elements by position[cite:
779].

.. code:: python

   # Creating sets
   unique_numbers = {1, 2, 3, 2, 1} # Duplicates removed automatically
   empty_set = set() # Use set() to create empty set, not {}
   student_ids = {101, 102, 103}

   print(unique_numbers) # Output: {1, 2, 3}

   # Set operations
   s1 = {1, 2, 3}
   s2 = {2, 3, 4}

   print(s1 | s2) # Union: {1, 2, 3, 4}
   print(s1 & s2) # Intersection: {2, 3}
   print(s1 - s2) # Difference: {1}
   print(s1 ^ s2) # Symmetric difference: {1, 4}
