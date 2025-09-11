## Python Time-related Modules Documentation

This document covers the built-in Python modules related to time and date handling: `time`, `datetime`, `calendar`, and `timeit`. Each section includes purpose, common functions, example usage, and explanation.

---

## `time` Module

### Purpose

The `time` module provides functions for working with time in its raw format (Unix timestamp) and for delaying execution.

### Common Functions

* `time.time()` → Returns current time in seconds since epoch
* `time.sleep(seconds)` → Suspends execution for given seconds
* `time.localtime([secs])` → Converts epoch to struct\_time in local time
* `time.gmtime([secs])` → Converts epoch to struct\_time in UTC
* `time.strftime(format[, t])` → Formats a struct\_time into a string
* `time.strptime(string, format)` → Parses a string into struct\_time

###  Common Format Codes

| Code | Meaning            | Example |
| ---- | ------------------ | ------- |
| `%Y` | Year (4 digits)    | 2025    |
| `%y` | Year (2 digits)    | 25      |
| `%m` | Month (01-12)      | 05      |
| `%d` | Day (01-31)        | 09      |
| `%H` | Hour (00-23)       | 14      |
| `%I` | Hour (01-12)       | 02      |
| `%p` | AM/PM              | PM      |
| `%M` | Minute (00-59)     | 45      |
| `%S` | Second (00-59)     | 30      |
| `%A` | Full weekday name  | Friday  |
| `%a` | Short weekday name | Fri     |
| `%B` | Full month name    | May     |
| `%b` | Short month name   | May     |

### Example

```python
import time

print("Current timestamp:", time.time())
time.sleep(1)
print("Local time:", time.localtime())
print("Formatted:", time.strftime("%Y-%m-%d %H:%M:%S", time.localtime()))
```

### Explanation

* `time.time()` returns a float (e.g., `1715246457.1234`)
* `time.localtime()` returns a struct\_time with 9 attributes (year, month, etc.)

---

## `datetime` Module

### Purpose

Provides classes for manipulating dates and times in a more OOP way.

### Key Classes & Methods

* `datetime.datetime.now()` → Returns current local datetime
* `datetime.date.today()` → Returns current date
* `datetime.timedelta(days=1)` → Represents duration for date math
* `datetime.datetime.strptime(str, format)` → Converts string to datetime
* `datetime.datetime.strftime(format)` → Converts datetime to string

### Example

```python
from datetime import datetime, timedelta

now = datetime.now()
print("Now:", now)

tomorrow = now + timedelta(days=1)
print("Tomorrow:", tomorrow.strftime("%A, %d %B %Y"))
```

### Explanation

* `datetime.now()` includes both date and time
* `timedelta` is useful for date arithmetic

---

## `calendar` Module

### Purpose

Provides utilities to output and manipulate calendars.

### Common Functions

* `calendar.month(year, month)` → Returns calendar as a string
* `calendar.calendar(year)` → Returns whole year calendar
* `calendar.isleap(year)` → Checks leap year
* `calendar.weekday(year, month, day)` → Returns day index (0=Mon)

### Example

```python
import calendar

print(calendar.month(2025, 5))
print("Is 2024 a leap year?", calendar.isleap(2024))
```

### 📖 Explanation

* Weekday numbers: 0 = Monday, 6 = Sunday
* Output is string-based calendar

---

## `timeit` Module

### Purpose

Used to measure execution time of small code snippets precisely.

### Common Usage

* `timeit.timeit(stmt, setup, number)` → Returns time to run stmt `number` times

### Example

```python
import timeit

code = "''.join(str(x) for x in range(100))"
time_taken = timeit.timeit(stmt=code, number=1000)
print("Execution time:", time_taken)
```

### Explanation

* Default setup is empty
* Precise timer, avoids noise from system processes

---

## Summary

| Module     | Use Case                       |
| ---------- | ------------------------------ |
| `time`     | Raw time, delays, formatting   |
| `datetime` | Date/time objects & arithmetic |
| `calendar` | Display/manipulate calendars   |
| `timeit`   | Measure execution performance  |

---

> 📚 This is part of the Python chapter.


