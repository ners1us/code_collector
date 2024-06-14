#!/bin/bash

project_dir=$(pwd)
output_file="${project_dir}/code.txt"

if [ -f "$output_file" ]; then
  rm "$output_file"
fi

code_extensions=("*.java" "*.py" "*.js" "*.c" "*.cpp" "*.h" "*.hpp" "*.cs" "*.rb" "*.php" "*.swift" "*.kt" "*.go" "*.rs" "*.scala" "*.ts" "*.tsx" "*.dart" "*.sh" "*.bash" "*.sql" "*.html" "*.css" "*.scss" "*.sass" "*.less" "*.yml" "*.yaml")

read_files() {
  for entry in "$1"/*
  do
    if [ -d "$entry" ]; then
      read_files "$entry"
    elif [ -f "$entry" ]; then
      for ext in "${code_extensions[@]}"; do
        if [[ "$entry" == $ext ]]; then
          relative_path=${entry#"$project_dir/"}
          echo "// File: $relative_path" >> "$output_file"
          cat "$entry" >> "$output_file"
          echo "" >> "$output_file"
          break
        fi
      done
    fi
  done
}

read -p "Enter folder name(s) (if there are several of them, separate with spaces): " directories

IFS=' ' read -ra directory_array <<< "$directories"

for dir in "${directory_array[@]}"; do
  if [ -d "${project_dir}/${dir}" ]; then
    read_files "${project_dir}/${dir}"
  else
    echo "Folder '${dir}' not found."
  fi
done
