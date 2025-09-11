# File Handling in C 

File handling is an essential feature in the C programming language that allows us to read, write, and manipulate files in the system. Below is a detailed explanation of file handling in C. 

## 1. Opening a File (`fopen`)

The `fopen()` function is used to open a file in a specific mode. General syntax:

```c
FILE *fp;
fp = fopen("filename.txt", "mode");
```

If the file cannot be opened, `fopen()` returns `NULL`.

### Modes in `fopen()`
| Mode  | Description |
|-------|------------|
| `r`   | Opens a file for reading. The file must exist. |
| `w`   | Opens a file for writing. If the file exists, its contents will be erased. |
| `a`   | Opens a file for appending. If the file does not exist, a new file is created. |
| `r+`  | Opens a file for both reading and writing. The file must exist. |
| `w+`  | Opens a file for both reading and writing. If the file exists, its contents will be erased. |
| `a+`  | Opens a file for both reading and writing. Adds data at the end of the file. |

###  Example: Using `fopen()`
```c
#include <stdio.h>

int main() {
    FILE *fp = fopen("data.txt", "w");
    if (fp == NULL) {
        printf("Failed to open the file!\n");
        return 1;
    }
    fprintf(fp, "Hello, world!\n");
    fclose(fp);
    return 0;
}
```

---

## 2. Closing a File (`fclose`)
Every opened file must be closed using `fclose()` to prevent memory leaks. 💾
```c
fclose(fp);
```

---

## 3. Deleting a File (`remove`)
The `remove()` function is used to delete a file from the system. ❌
```c
#include <stdio.h>

int main() {
    if (remove("data.txt") == 0) {
        printf("File successfully deleted.\n");
    } else {
        printf("Failed to delete the file.\n");
    }
    return 0;
}
```

---

## 4. Writing to a File (`fprintf` & `fputs`)

- `fprintf(fp, "format", data)` writes formatted data to a file.
- `fputs("text", fp)` writes a string without formatting.

Example:
```c
#include <stdio.h>

int main() {
    FILE *fp = fopen("output.txt", "w");
    if (fp == NULL) {
        printf("Failed to open the file!\n");
        return 1;
    }
    fprintf(fp, "This is an example of file handling in C.\n");
    fputs("This is the second line.\n", fp);
    fclose(fp);
    return 0;
}
```

---

## 5. Reading from a File (`fscanf` & `fgets`)

- `fscanf(fp, "format", &var)` reads formatted data from a file.
- `fgets(var, length, fp)` reads a string from a file.

Example:
```c
#include <stdio.h>

int main() {
    FILE *fp = fopen("output.txt", "r");
    if (fp == NULL) {
        printf("File not found!\n");
        return 1;
    }
    char buffer[100];
    while (fgets(buffer, 100, fp) != NULL) {
        printf("%s", buffer);
    }
    fclose(fp);
    return 0;
}
```

---

## Conclusion
- Use `fopen()` to open a file in the appropriate mode.
- Always close a file with `fclose()` after using it.
- Use `remove()` to delete a file if necessary.
- Use `fprintf()` or `fputs()` to write to a file.
- Use `fscanf()` or `fgets()` to read from a file.

This is the first part of file handling in C. In the next section, we will discuss binary files and advanced functions like `fseek()`, `ftell()`, and `rewind()`. Stay tuned! 🚀

> 📚 This is part of the C chapter.
