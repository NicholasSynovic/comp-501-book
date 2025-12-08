=============================================
Lesson 8: APIs and Building GUI with Tkinter
=============================================

**Owner:** (sx Shirsat, Rushikesh)

- **Prerequisite topics:**

  - Hyatt, Matt
  - suggestion only

- **Hyatt, Matt** other suggestion:

Suggested Chapter Title -> Building GUI Apps with Tkinter and APIs in
Python

--------------

NEW UPDATES

--------------

We have separated this chapter into two parts Part 1 is Understanding
API’s & Part 2 is Building GUI with Tkinter

INDEX

Part 1: Understanding APIs
--------------------------

1. Introduction to APIs
~~~~~~~~~~~~~~~~~~~~~~~

- What is an API (Application Programming Interface)?
- Why APIs are used (communication between software applications)
- Examples of real-world APIs (weather data, currency converter,
  YouTube, etc.)

2. Types of APIs
~~~~~~~~~~~~~~~~

- Web APIs (REST, SOAP)
- Local APIs / Library APIs
- Public vs. Private APIs

3. How Web APIs Work
~~~~~~~~~~~~~~~~~~~~

- Client-Server model
- Endpoints and HTTP methods (GET , POST , PUT , DELETE)
- Understanding JSON (JavaScript Object Notation) format
- Example of an API request and response

4. Using APIs in Python
~~~~~~~~~~~~~~~~~~~~~~~

- Installing and importing ``requests`` module
- Sending a GET request
- Parsing JSON response
- Handling errors and exceptions

5. Example Projects
~~~~~~~~~~~~~~~~~~~

- Fetching data from a public API (e.g., OpenWeatherMap, Cat Facts API,
  etc.)
- Displaying API data in the terminal

Part 2: Building GUIs with Tkinter
----------------------------------

6. Introduction to Tkinter
~~~~~~~~~~~~~~~~~~~~~~~~~~

- What is Tkinter?
- Setting up the environment
- Basic structure of a Tkinter program
- Creating the main window ( ``Tk()`` )

7. Widgets in Tkinter
~~~~~~~~~~~~~~~~~~~~~

- Labels, Buttons, Entry, Text, Frame, Canvas, Listbox
- Widget options (text, font, color, etc.)
- Geometry managers ( ``pack``, ``grid``, ``place`` )

8. Handling Events
~~~~~~~~~~~~~~~~~~

- Button click events ( ``command`` parameter)
- Getting user input from Entry
- Updating label text dynamically

9. Layout and Styling
~~~~~~~~~~~~~~~~~~~~~

- Frames and organizing the window
- Using padding, alignment, and resizing
- Introduction to ``ttk`` for modern-looking widgets

10. Integrating APIs with Tkinter GUI
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

- Combining Tkinter with an API call
- Displaying live data (like weather info) in a GUI
- Handling user input (e.g., user enters a city name → app fetches data
  via API)

11. Example Mini Projects
~~~~~~~~~~~~~~~~~~~~~~~~~

- Weather App using OpenWeatherMap API
- Random Cat Facts App
- Currency Converter App
- Movie Search App using OMDb API

12. Error Handling and Debugging
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

- Handling invalid user inputs
- Managing failed API requests (timeouts, invalid keys, etc.)
- Showing error messages in GUI ( messagebox )

13. Packaging and Running
~~~~~~~~~~~~~~~~~~~~~~~~~

- Running your GUI application
- Converting your Python GUI to an executable (.exe) using
  ``pyinstaller``

--------------

**Lesson : APIs and Tkinter Set Started**

**Introduction**

In modern programming, applications rarely work in isolation. They often
need to interact with other programs, services, or users. Two important
concepts that help us build powerful and interactive applications are
APIs and Graphical User Interfaces (GUIs).

- APIs allow your program to communicate with other software, services,
  or data providers over the internet.
- Tkinter lets you create graphical interfaces, so your program is
  easier to use and more interactive.

.. _introduction-to-apis-1:

1. Introduction to APIs
-----------------------

What is an API?
~~~~~~~~~~~~~~~

- API (Application Programming Interface) is a set of rules that allows
  one piece of software to interact with another.
- Think of it as a bridge between two systems that lets them share data
  and functionality.

Real-Life Analogy
~~~~~~~~~~~~~~~~~

Imagine a restaurant:

- You (the user) → make a request.
- Waiter (the API) → takes your order to the kitchen.
- Kitchen (the server) → prepares the food (data) and gives it back to
  you via the waiter.

Similarly, in programming:

- The client sends a request.
- The server processes it and sends a response.

::

   Request
   Client Response

   API
   Server

Why APIs Are Important
~~~~~~~~~~~~~~~~~~~~~~

- They enable data sharing between apps (e.g., Google Maps integrated in
  ride-sharing apps).
- Help developers build feature-rich apps faster without reinventing the
  wheel.
- Provide access to third-party services like weather info, social
  media, news, etc.

Common Examples
~~~~~~~~~~~~~~~

- Weather Apps – use APIs like OpenWeatherMap
- Currency Converters – use ExchangeRate API

.. _types-of-apis-1:

1.1 Types of APIs
~~~~~~~~~~~~~~~~~

1. Web APIs
^^^^^^^^^^^

- The most common type — used to interact with web servers via the
  Internet.
- Use HTTP methods (GET, POST, PUT, DELETE).
- Examples:

  - [https://api.github.com/users/octocat]
  - `https://api.openweathermap.org/data/2.5/weather?q=Chicago&appid=… <https://api.openweathermap.org/data/2.5/weather?q=Chicago&appid=...>`__

2. Library or Local APIs
^^^^^^^^^^^^^^^^^^^^^^^^

- Built into programming languages or libraries.
- Example: Python’s ``math`` module ( ``math.sqrt()`` ) is an API that
  lets you use mathematical functions.

3. Public vs. Private APIs
^^^^^^^^^^^^^^^^^^^^^^^^^^

+-----------------------+-----------------------+-----------------------+
| Type                  | Description           | Example               |
+=======================+=======================+=======================+
| Public API            | Open to everyone,     | OpenWeatherMap        |
|                       | usually free or with  |                       |
|                       | a key                 |                       |
+-----------------------+-----------------------+-----------------------+
| Private API           | Restricted for        | Google’s internal     |
|                       | internal use within   | APIs                  |
|                       | an organization       |                       |
+-----------------------+-----------------------+-----------------------+
| Partner API           | Shared between        | PayPal merchant APIs  |
|                       | companies under       |                       |
|                       | agreements            |                       |
+-----------------------+-----------------------+-----------------------+

.. _how-web-apis-work-1:

1.3. How Web APIs Work
~~~~~~~~~~~~~~~~~~~~~~

Client-Server Model
^^^^^^^^^^^^^^^^^^^

1. Client (your app) sends a request.
2. Server processes it.
3. Server sends back a response (usually in JSON).

API Request and Response Example
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Request URL:

Response (JSON):

HTTP Methods
^^^^^^^^^^^^

====== ==================== ================
Method Purpose              Example
====== ==================== ================
GET    Retrieve data        Get weather data
POST   Send new data        Submit a form
PUT    Update existing data Edit a profile
DELETE Remove data          Delete a note
====== ==================== ================

Endpoints
^^^^^^^^^

- Each URL path is an endpoint (specific resource on the server).

Example:

https://api.github.com/users/octocat/repos → endpoint for user
repositories.

.. _using-apis-in-python-1:

Using APIs in Python
~~~~~~~~~~~~~~~~~~~~

To use APIs, we often use the ``requests`` library.

Step 1: Install and Import
^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code:: python

   pip install requests

.. code:: python

   import requests

Step 2: Send a GET Request
^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code:: python

   response = requests.get("https://api.github.com/users/octocat")

Step 3: Check Status
^^^^^^^^^^^^^^^^^^^^

.. code:: python

   print(response.status_code)  # 200 means success

Step 4: Parse JSON Data
^^^^^^^^^^^^^^^^^^^^^^^

.. code:: python

   data = response.json()
   print(data["name"])

Output Example:

.. code:: python

   The Octocat

Step 5: Handle Errors
^^^^^^^^^^^^^^^^^^^^^

.. code:: python

   if response.status_code != 200:
       print("Error:", response.status_code)
   else:
       print(data["name"])

5. Example Projects (for Practice)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Example 1: Simple Weather Fetcher
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Example 2: Random Cat Fact
^^^^^^^^^^^^^^^^^^^^^^^^^^

Example 3: Currency Converter
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

TIPS
~~~~

- APIs let your app communicate with other systems.
- Use the ``requests`` module for HTTP operations.
- JSON is the most common data format for APIs.
- Always handle errors and check ``status_code``.
- Practice with public APIs before working with private ones.

Example: Getting Weather Data
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Imagine you want to build a program that shows the current temperature
in a city. Instead of collecting and updating weather data yourself, you
can use a weather API like OpenWeatherMap.

Step-by-step: Using OpenWeatherMap API in Python
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

1. Sign up at OpenWeatherMap https://openweathermap.org/

2. Understand the API endpoint (URL) you need to call:
   https://api.openweathermap.org/data/2.5/weather?q=city_name&appid=API_key&units=metric

3. Write Python code to send a request and process the response.

What are we doing in the code
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

- We used the requests.get() method to send an HTTP GET request to the
  API.
- We passed parameters (city, api_key, units) to the API.
- We checked if the request was successful (status_code == 200).
- We converted the JSON response into a Python dictionary using.json().
- We extracted and printed useful information: temperature and weather
  description.

--------------

Part A: Multiple-Choice Questions (MCQs)
========================================

Choose the correct answer

1. **What does API stand for?**

a) Application Programming Interface
b) Advanced Program Integration
c) Automated Process Input
d) Applied Programming Interaction

--------------

2. **Which of the following is NOT a common HTTP method used in APIs?**

a) GET
b) POST
c) FETCH
d) DELETE

--------------

3. **What is the purpose of an API key?**

a) To encrypt JSON data
b) To identify and authenticate the user or app making a request
c) To make the response faster
d) To store client data

--------------

4. **Which of the following Python libraries is commonly used to work
   with APIs?**

a) os
b) math
c) requests
d) pandas

5. **What is the most common data format used in API responses?**

a) XML
b) HTML
c) JSON
d) CSV

6. **In the URL [https://api.github.com/users/octocat, what is the
   endpoint?]**

a) https://api.github.com
b) `/users/octocat <https://users/octocat>`__
c) `octocat <https://octocat>`__
d) `api.github.com <https://api.github.com>`__

7. **What does the status code ``404`` represent?**

a) Success
b) Server error
c) Not found
d) Bad request

8. **Which function from the ``requests`` library retrieves the JSON
   data?**

a) response.text()
b) response.html()
c) response.json()
d) response.data()

9. **If ``response.status_code == 200``, what does that mean?**

a) Request failed
b) Request succeeded
c) Server busy
d) Unauthorized access

--------------

10 **What will happen if you call an API without an internet
connection?**

a) Returns empty JSON
b) Raises a requests.exceptions.ConnectionError
c) Returns 404
d) Prints nothing

--------------

☑ Answer Key (for instructors/self-check):

1-a, 2-c, 3-b, 4-c, 5-c, 6-b, 7-c, 8-c, 9-b, 10-b

--------------

Short Answer Questions
----------------------

Write short answers (2–3 sentences each):

1. Explain what an API is and give one real-world example.

2. Differentiate between public and private APIs.

3. What is JSON, and why is it preferred in APIs?

4. What does the ``requests.get()`` function do in Python?

5. What is the role of endpoints in an API?

6. What happens when an invalid city name is sent to a weather API?

7. How can you handle API errors in Python?

8. What is the difference between ``GET`` and ``POST`` requests?

--------------

Part C: Coding Exercises
------------------------

Exercise 1: Get a Joke from an API
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Task:**

Write a Python program that fetches and prints a random joke using this
API:

.. code:: python

   url = "https://official-joke-api.appspot.com/random_joke"

**Hint:**

The JSON response looks like:

.. code:: json

   {
     "setup": "Why did the chicken cross the road?",
     "punchline": "To get to the other side!"
   }

**Expected Output:**

.. code:: python

   Why did the chicken cross the road?
   To get to the other side!

Exercise 2: Cat Facts API
~~~~~~~~~~~~~~~~~~~~~~~~~

**Task:**

Use the API [https://catfact.ninja/fact] to display a random cat fact.

If the request fails, print [“Error fetching data.”]

--------------

Exercise 3: Weather Data (Mini Project)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Task:**

Ask the user for a city name and display the temperature and condition
using:

.. code:: python

   url = f"http://api.openweathermap.org/data/2.5/weather?q={city}&appid=YOUR_API_KEY&units=metric"

*(This API doesn’t require a key)*

**Example Output:**

.. code:: python

   Enter city name: London
   Temperature: 15°C, Condition: cloudy

--------------

Exercise 4: Explore JSON Keys
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Task:**

Fetch data from

.. code:: python

   url = "https://api.github.com/users/octocat"

and print only the following:

- login
- public_repos
- followers

--------------

Exercise 5: Error Handling Practice
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Task:**

Write a Python script that requests data from an invalid API endpoint.

Use a [try-except] block to handle the RequestException and print
[“Network error or invalid URL.”]

--------------

Part 2: Building GUI with Tkinter
=================================

Introduction to GUI (Graphical User Interface)
----------------------------------------------

A **Graphical User Interface (GUI)** is a type of user interface that
allows people to interact with a computer using visual elements such as
windows, buttons, text boxes, icons, sliders, dropdowns, and images.

Unlike command-line programs where users must type instructions, a GUI
lets users perform actions using the **mouse**, **keyboard**, or
**touch**, making applications more user-friendly, intuitive, and
accessible to beginners.

Why Do We Use GUIs?
~~~~~~~~~~~~~~~~~~~

- They are easier to use than typing commands.
- They provide **visual feedback**, so users immediately see results.
- They make software look **modern and professional**.
- They allow users to interact without knowing programming commands.
- They minimize user mistakes through menus, buttons, and prompts.

Real-World Examples of GUIs
~~~~~~~~~~~~~~~~~~~~~~~~~~~

You interact with GUIs every day: - Windows and macOS desktops - Mobile
apps - Calculator apps - File Explorer / Finder - Web browsers like
Chrome and Firefox - Video players, drawing tools, games, dashboards,
etc.

Every app with buttons, colors, menus, or pop-ups is a GUI application.

--------------

6. What is Tkinter?
~~~~~~~~~~~~~~~~~~~

- Tkinter is Python’s built-in library for creating **Graphical User
  Interfaces (GUIs)**.
- It allows you to build desktop applications with buttons, text boxes,
  menus, and more.
- It comes pre-installed with Python, so no extra installation is
  needed.

--------------

How Tkinter Works
~~~~~~~~~~~~~~~~~

- Tkinter acts as a bridge between Python and the Tcl/Tk GUI toolkit.
- The main window of the application is created using the ``Tk()``
  object.

Structure of a Simple Tkinter Program
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code:: python

   import tkinter as tk

   root = tk.Tk()
   root.title("My First GUI")

   label = tk.Label(root, text="Hello, Tkinter!")
   label.pack()

   root.mainloop()

**Explanation** 1. ``tk.Tk()`` → Creates the main window. 2. ``Label`` →
A widget that displays text. 3. ``pack()`` → Places the widget in the
window. 4. ``mainloop()`` → Keeps the window open and listens for user
actions.

7. Tkinter Widgets
~~~~~~~~~~~~~~~~~~

Widgets are the building blocks of a GUI.

Commonly Used Widgets
^^^^^^^^^^^^^^^^^^^^^

=========== ==============================
Widget      Purpose
=========== ==============================
Label       Display text or images
Button      Perform an action when clicked
Entry       Accept single-line text input
Text        Multi-line text input
Frame       Container for grouping widgets
Listbox     Display a list of items
Canvas      Draw shapes or graphics
Checkbutton Create checkboxes
=========== ==============================

Example: Label and Button
^^^^^^^^^^^^^^^^^^^^^^^^^

.. code:: python

   import tkinter as tk

   def on_click():
       print("Button clicked!")

   root = tk.Tk()
   btn = tk.Button(root, text="Click Me", command=on_click)
   btn.pack()

   root.mainloop()

8. Handling Events and User Input
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Events are user interactions (like button clicks or typing text).

Getting Input from Entry
^^^^^^^^^^^^^^^^^^^^^^^^

.. code:: python

   import tkinter as tk

   def show_text():
       user_input = entry.get()
       label.config(text=f"Hello, {user_input}!")

   root = tk.Tk()
   entry = tk.Entry(root)
   entry.pack()

   btn = tk.Button(root, text="Submit", command=show_text)
   btn.pack()

   label = tk.Label(root, text="")
   label.pack()

   root.mainloop()

**Explanation** - entry.get() fetches text from the Entry widget. -
label.config(text=“…”) updates the text dynamically.

.. _layout-and-styling-1:

9. Layout and Styling
~~~~~~~~~~~~~~~~~~~~~

Tkinter offers geometry managers to position widgets.

Geometry Managers
^^^^^^^^^^^^^^^^^

======= ================================================
Manager Description
======= ================================================
pack()  Simplest, stacks widgets vertically/horizontally
grid()  Arranges widgets in a table-like structure
place() Positions widgets using exact coordinates
======= ================================================

12. Error Handling and Debugging in Tkinter
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Handling Invalid Inputs
^^^^^^^^^^^^^^^^^^^^^^^

Use messagebox for displaying error messages.

.. code:: python

   from tkinter import messagebox

   messagebox.showerror("Error", "Invalid input!")

Common Issues
^^^^^^^^^^^^^

======= ===== ========
Problem Cause Solution
======= ===== ========
\


======= ===== ========

.. _packaging-and-running-1:

13. Packaging and Running
~~~~~~~~~~~~~~~~~~~~~~~~~

Steps
^^^^^

1. Install PyInstaller:

.. code:: bash

   pip install pyinstaller

2. Build executable:

.. code:: bash

   pyinstaller --onefile your_script.py

3. Find the ``.exe`` file in the ``dist`` folder.

--------------

14. Mini GUI + API Projects (Practice Ideas)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

=
1
2
3
4
5
=

--------------

Example Tkinter Projects
~~~~~~~~~~~~~~~~~~~~~~~~

--------------

1. Simple Calculator
^^^^^^^^^^^^^^^^^^^^

Basic math operations using buttons and entry widget.

**Key Concepts:**

- Button click events (bind)
- ``eval()`` for expression evaluation
- Dynamic Entry widget updates

--------------

2. Weather App (Using OpenWeatherMap API)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Fetch weather data from an API and show it in GUI.

**Key Concepts:**

- Integrating an API with Tkinter
- Handling network requests ( requests )
- Updating GUI elements dynamically

3. Random Cat Facts App
^^^^^^^^^^^^^^^^^^^^^^^

--------------

Unit 2 : Multiple-Choice Questions (MCQs)
-----------------------------------------

Choose the correct option

1. **What is Tkinter in Python?**

a) A data analysis library
b) A GUI library for building desktop applications
c) A web framework
d) A library for working with databases

2. **Which command creates the main application window in Tkinter?**

a) window = Tk()
b) root = Tk()
c) main = tk()
d) main_window()

3. **Which function keeps the Tkinter window open and responsive?**

a) root.show()
b) root.display()
c) root.mainloop()
d) root.loop()

4. **Which of the following is NOT a geometry manager in Tkinter?**

a) pack()
b) grid()
c) place()
d) align()

5. **What does the ``command`` attribute in a Button widget do?**

a) To define the function to execute when clicked
b) To change window size

6. **Which method retrieves the text from an Entry widget?**

a) .get()
b) .text()
c) .read()
d) .fetch()

7. **What is the role of the Label widget?**

a) Accepts user input
b) Displays text or images
c) Displays menus
d) Creates buttons

8. **Which module provides themed (modern) widgets in Tkinter?**

a) ttk
b) themed
c) modern_ui
d) gui_theme

--------------

9. **What does ``pack()`` do in Tkinter?**

a) Defines exact position of widgets
b) Organizes widgets into a window by stacking them
c) Removes widgets from a window
d) Closes the GUI

--------------

**Answer Key:** 1-b, 2-b, 3-c, 4-d, 5-a, 6-a, 7-b, 8-a, 9-b

--------------

Unit 2- Short Answer Questions
------------------------------

Answer in 2–3 sentences.

1.  What is the purpose of the ``mainloop()`` function in Tkinter?

2.  Explain the difference between the ``pack()`` and ``grid()``
    geometry managers.

3.  What does the ``command`` attribute in a Button do?

4.  How can you change the title of the Tkinter window?

5.  What is the difference between ``Label`` and ``Entry`` widgets?

6.  How can you organize multiple widgets inside a window neatly?

7.  What is ``ttk`` in Tkinter, and why is it used?

8.  How do you display a message box warning in Tkinter?

9.  How can you make the window size fixed so users can’t resize it?

10. How do you close a Tkinter window programmatically?

--------------

Suggested Answers (for self-check):
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

1.  Keeps the window open and listens for user events.

2.  ``pack()`` stacks widgets vertically/horizontally; ``grid()`` places
    them in rows and columns.

3.  Executes a function when the button is clicked.

4.  Using ``root.title("Window Title")``.

5.  ``Label`` shows text/images; ``Entry`` accepts one-line user input.

6.  Use frames, grid layout, or padding ( ``padx``, ``pady``).

7.  ``ttk`` gives modern, themed widgets.

8.  Using from ``tkinter import messagebox`` →
    ``messagebox.showwarning("Title", "Message")``.

9.  ``root.resizable(False, False)``

10. Using ``root.destroy()``

--------------

.. _part-c-coding-exercises-1:

Part C: Coding Exercises
~~~~~~~~~~~~~~~~~~~~~~~~

Exercise 1: Hello GUI
~~~~~~~~~~~~~~~~~~~~~

**Task:**

Create a simple Tkinter window that displays the text:

Welcome to Tkinter!

and a button that closes the application when clicked.

**Hint:**

Use a [Label] for the text and [Button] with [root.destroy()].

--------------

Exercise 2: Greeting App
~~~~~~~~~~~~~~~~~~~~~~~~

**Task:**

Create a window with:

- An Entry box for the user’s name
- A Button that says “Greet Me”
- A Label that displays [Hello, ] after the button is clicked

**Expected Output:**

--------------

Exercise 3: Simple Login Window
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Task:**

Build a login form with:

- Username and Password labels and entry boxes
- A “Login” button that prints “Login Successful” in the console when
  clicked

**Extra:**

Use ``show="*"`` for password masking.

--------------

Exercise 4: Counter App
~~~~~~~~~~~~~~~~~~~~~~~

**Task:**

Create a GUI counter with:

- A label showing the number
- “+” and “-” buttons to increase/decrease the count

**Hint:**

Use a variable and ``label.config(text=variable)`` to update the
display.

--------------

Exercise 5: Color Changer
~~~~~~~~~~~~~~~~~~~~~~~~~

**Task:**

Make a window with three buttons: “Red”, “Green”, and “Blue”.

Clicking each button should change the background color of the window.

**Hint:**

Use ``root.config(bg="color")``.

--------------

Exercise 6: Simple Calculator
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Task:**

Create a GUI calculator that can add two numbers:

- Two Entry fields for inputs
- A “Calculate” button
- A Label to show the result

**Expected Output:**
