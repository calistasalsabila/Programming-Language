# Python Modules: `os` and `shutil`

Learn two essential Python modules for automating file and folder manipulation. Super useful for automation scripts, backups, or any project involving directories. 💻📂

---

## `os` Module

### Purpose:

The `os` module is used to interact with the operating system. It includes functions for accessing environment variables, managing files & directories, and executing shell commands.

### Common Functions:

| Function               | Description                                         |
| ---------------------- | --------------------------------------------------- |
| `os.name`              | Returns the name of the OS (e.g. `'posix'`, `'nt'`) |
| `os.getcwd()`          | Gets the current working directory                  |
| `os.chdir(path)`       | Changes the working directory                       |
| `os.listdir(path)`     | Lists files/folders in the given path               |
| `os.mkdir(path)`       | Creates a new folder                                |
| `os.makedirs(path)`    | Creates folder along with necessary parent folders  |
| `os.remove(file)`      | Deletes a file                                      |
| `os.rmdir(path)`       | Deletes an empty folder                             |
| `os.path.exists(path)` | Checks if a path exists                             |
| `os.path.join(a, b)`   | Joins paths properly according to the OS            |
| `os.walk(path)`        | Generates file names in a directory tree            |

### Code Example:

```python
import os

print("OS Name:", os.name)
print("Current Directory:", os.getcwd())

folder = "test_folder"
if not os.path.exists(folder):
    os.mkdir(folder)
    print(f"Folder '{folder}' created.")
else:
    print(f"Folder '{folder}' already exists.")
```

### Example with `os.walk()`:

```python
import os

for dirpath, dirnames, filenames in os.walk("."):
    print(f"Current directory: {dirpath}")
    print(f"Subdirectories: {dirnames}")
    print(f"Files: {filenames}")
    print("---")
```

### Explanation:

* `os.name` helps detect the OS (useful for cross-platform support).
* `os.getcwd()` & `os.chdir()` help navigate directories.
* `os.mkdir()` & `os.makedirs()` are used to create new directories.
* `os.path.join()` ensures safe and clean path formatting.
* `os.walk()` recursively traverses folders and subfolders, returning current directory, subdirectories, and filenames.

---

## `shutil` Module

### Purpose:

The `shutil` module is used for high-level file operations like copying, moving, and deleting directories recursively.

### Common Functions:

| Function                                           | Description                           |
| -------------------------------------------------- | ------------------------------------- |
| `shutil.copy(src, dst)`                            | Copies a file to a new location       |
| `shutil.copy2(src, dst)`                           | Like `copy`, but also copies metadata |
| `shutil.move(src, dst)`                            | Moves a file or directory             |
| `shutil.rmtree(path)`                              | Deletes a folder and its contents     |
| `shutil.make_archive(base_name, format, root_dir)` | Creates a zip/archive                 |
| `shutil.unpack_archive(filename, extract_dir)`     | Extracts archive files                |

### Code Example:

```python
import shutil
import os

src_file = "hello.txt"
dest_file = "backup_hello.txt"

# Create dummy file if it doesn't exist
if not os.path.exists(src_file):
    with open(src_file, 'w') as f:
        f.write("Hello from Dokja!")

# Copy file
shutil.copy(src_file, dest_file)
print(f"'{src_file}' successfully copied to '{dest_file}'")
```

### Explanation:

* `shutil.copy()` is used to copy files.
* `shutil.move()` is used to move files/directories.
* `shutil.rmtree()` deletes folders and their contents (use with caution 💣).

---

## Pro Tips

* Always check with `os.path.exists()` before performing file/folder operations.
* Use `os.path.join()` instead of hardcoded paths (for cross-platform compatibility).
* `shutil.rmtree()` is powerful—don’t use it recklessly.

---

## Mini Case Study: Auto Backup Script

```python
import os
import shutil

src = "data.txt"
backup_dir = "backup"

if not os.path.exists(src):
    with open(src, 'w') as f:
        f.write("Very important data from Jeha")

if not os.path.exists(backup_dir):
    os.mkdir(backup_dir)

backup_path = os.path.join(backup_dir, src)
shutil.copy(src, backup_path)
print(f"File '{src}' backed up to folder '{backup_dir}'")
```

---

## Conclusion

With `os` and `shutil`, you can automate scripts, build file organizers, create backup tools, or even a simple recycle bin system. Keep practicing and exploring!

> 📚 This is part of the Python chapter.

