# code_collector

This Bash script is designed to collect code files from specified directories and their subdirectories, and concatenate their contents into a single output file. The script supports various programming languages and file extensions.

## Usage

1. Place the script in the project folder

2. Run the script:

```bash
./collector.sh
```


3. When prompted, enter the folder name(s). If there are multiple folders, separate them with spaces.

## Supported File Extensions

The script supports the following file extensions:

- *.java
- *.py
- *.js
- *.c
- *.cpp
- *.h
- *.hpp
- *.cs
- *.rb
- *.php
- *.swift
- *.kt
- *.go
- *.rs
- *.scala
- *.ts
- *.tsx
- *.dart
- *.sh
- *.bash
- *.sql
- *.html
- *.css
- *.scss
- *.sass
- *.less
- *.yml
- *.yaml

## Output

The script will create (or overwrite if it already exists) a file named ```code.txt``` in the current working directory. Each code file will be preceded by a comment line indicating its relative path within the project directory. The contents of each code file will be appended to the output file, separated by a blank line.
### Example output:

// File: src/main/java/com/example/MyClass.java \
public class MyClass {
// ...
}

// File: src/main/python/utils.py \
def my_function():
#### ...


## Notes

- The script assumes that the specified folders exist within the current working directory.
- If a specified folder does not exist, the script will print a warning message.
- The list of supported file extensions can be either supplemented or reduced by manually making changes to the script code.
