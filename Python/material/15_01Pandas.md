# Pandas 

> Your friendly guide to mastering `pandas` for data manipulation in Python! 

---

## What is Pandas?

**Pandas** is an open-source Python library used for data analysis and data manipulation. It offers two primary data structures:

* `Series` → 1D labeled array.
* `DataFrame` → 2D labeled table with columns of potentially different types.

---

## Installation

```bash
pip install pandas
```

---

## Importing Pandas

```python
import pandas as pd
```

We usually import it as `pd` for convenience.

---

## Series: One-Dimensional Data

### Creating a Series

```python
import pandas as pd

data = [10, 20, 30]
s = pd.Series(data, index=['Jeha', 'Hamin', 'Dokja'])
print(s)
```

**Output:**

```
Jeha     10
Hamin    20
Dokja    30
dtype: int64
```

### Explanation:

* `data`: The values.
* `index`: Labels for each value.

---

## DataFrame: Two-Dimensional Table

### Creating a DataFrame

```python
data = {
    'Name': ['Jeha', 'Hamin', 'Dokja'],
    'Score': [90, 85, 88]
}
df = pd.DataFrame(data)
print(df)
```

**Output:**

```
    Name  Score
0   Jeha     90
1  Hamin     85
2  Dokja     88
```

### Explanation:

* Each column is a `Series`.
* Rows are automatically indexed from 0.

---

## Data Inspection

```python
df.head()       # First 5 rows
df.tail()       # Last 5 rows
df.shape        # (rows, columns)
df.info()       # Data summary
df.describe()   # Stats summary
df.columns      # List of column names
df.dtypes       # Data types of each column
```

### Explanation:

* `df.head(n)` → Returns the first `n` rows of the DataFrame (default is 5).
* `df.tail(n)` → Returns the last `n` rows of the DataFrame (default is 5).
* `df.shape` → Returns a tuple representing the dimensionality (rows, columns).
* `df.info()` → Shows a concise summary of the DataFrame including index dtype, columns, non-null values, and memory usage.
* `df.describe()` → Generates descriptive statistics including count, mean, std, min, 25%, 50%, 75%, and max.
* `df.columns` → Returns an Index object containing the column labels.
* `df.dtypes` → Returns the data type of each column.

---

## Column Access

```python
df['Name']       # Access column
```

You can also use dot notation if no space:

```python
df.Name
```

To access multiple columns:

```python
df[['Name', 'Score']]
```

---

## Filtering Rows

```python
df[df['Score'] > 85]  # Filter rows with Score > 85
```

**Output:**

```
    Name  Score
0   Jeha     90
2  Dokja     88
```

You can also use:

```python
df.query('Score > 85')
```

To filter with multiple conditions:

```python
df[(df['Score'] > 85) & (df['Name'] != 'Jeha')]
```

---

## Exploring Data Further

### Sorting Values

```python
df.sort_values(by='Score', ascending=False)
```

You can sort by multiple columns:

```python
df.sort_values(by=['Score', 'Name'], ascending=[False, True])
```

### Value Counts (Count Frequency)

```python
df['Name'].value_counts()
```

**Output:**

```
Jeha     1
Hamin    1
Dokja    1
Name: Name, dtype: int64
```

This is useful for summarizing categorical data.

### Unique Values & Count

```python
df['Name'].unique()       # Unique values
df['Name'].nunique()      # Number of unique values
```

---

## Adding Columns

```python
df['Passed'] = df['Score'] >= 85
```

You can also compute new columns:

```python
df['Bonus'] = df['Score'] * 0.1
```

---

## Removing Columns/Rows

```python
df.drop('Passed', axis=1)          # Drop column

# Drop row by index
df.drop(1, axis=0)
```

> Use `inplace=True` to apply changes directly.

```python
df.drop('Passed', axis=1, inplace=True)
```

---

## Editing Data

```python
df.at[0, 'Score'] = 95   # Set specific value by label
df.iat[0, 1] = 95        # Set by position
```

---

## Combining DataFrames

### Append (concat)

```python
df2 = pd.DataFrame({'Name': ['Dazai'], 'Score': [92]})
df = pd.concat([df, df2], ignore_index=True)
```

### Merge (SQL-like)

```python
grades = pd.DataFrame({
    'Name': ['Jeha', 'Hamin'],
    'Grade': ['A', 'B']
})

merged = pd.merge(df, grades, on='Name', how='left')
```

---

## Reading & Writing Files

### Read CSV

```python
df = pd.read_csv('data.csv')
```

### Write CSV

```python
df.to_csv('output.csv', index=False)
```

---

## Handling Missing Data

```python
df.isnull()           # Check missing values
df.dropna()           # Remove rows with missing values
df.fillna(0)          # Replace with 0
```

You can also fill with method:

```python
df.fillna(method='ffill')  # Forward fill
df.fillna(method='bfill')  # Backward fill
```

---

## Loop through DataFrame

```python
for index, row in df.iterrows():
    print(row['Name'], row['Score'])
```

> Not recommended for large DataFrames — use vectorized operations.

---

## Apply Function

```python
df['Score'] = df['Score'].apply(lambda x: x + 5)
```

You can define a function too:

```python
def adjust_score(score):
    return score + 10

df['Adjusted'] = df['Score'].apply(adjust_score)
```

---

## Tips & Tricks

* Use `copy()` to avoid modifying the original.
* Use `df.columns` and `df.dtypes` to inspect structure.
* Use `query()` for readable filtering.
* Use `.loc[]` and `.iloc[]` for advanced selection.

```python
# Label-based
print(df.loc[0, 'Name'])

# Position-based
print(df.iloc[0, 0])
```

---

## Summary Table

| Function                | Description        |
| ----------------------- | ------------------ |
| `pd.Series()`           | Create 1D array    |
| `pd.DataFrame()`        | Create 2D table    |
| `.head(), .tail()`      | Preview data       |
| `.shape, .info()`       | Metadata           |
| `.drop(), .fillna()`    | Clean data         |
| `.merge(), .concat()`   | Combine data       |
| `.query()`              | Filter with string |
| `.apply()`              | Apply function     |
| `.sort_values()`        | Sort data          |
| `.value_counts()`       | Count categories   |
| `.unique(), .nunique()` | Unique values      |

---

## 📚 Resources

* [Pandas Documentation](https://pandas.pydata.org/docs/)
* [Pandas Cheat Sheet by DataCamp](https://www.datacamp.com/community/blog/python-pandas-cheat-sheet)
* [Kaggle Pandas Tutorials](https://www.kaggle.com/learn/pandas)

> 📚 This is part of the Python chapter.
