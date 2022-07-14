# Clang format Github action

This project can be used to run clang-format on every push using Github actions.

## Usage
Create a `formatter.yml` file in `.github/workflows/`.
Paste this code into the file:

```yml
on: push
name: clang-format Code Formatter
jobs:
  lint:
    name: clang-format Code Formatter
    runs-on: ubuntu-latest
    steps:
    - name: Clang Code Formatter
      uses: Mavrikant/clang-format-action@ubuntu-22.04
      env:
        GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```
