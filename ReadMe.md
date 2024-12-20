# Steps to Run the String Calculator Program and Tests

## Running the Program
1. **Run with predefined inputs**:
   - Navigate to the project folder.
   - Execute the following command:
     ```bash
     ruby bin/run
     ```
   - This will run the program with predefined inputs and display the output.

2. **Run with custom inputs**:
   - Open the file `string_calculator.rb` in a text editor.
   - Edit the file to provide your desired inputs.
   - Save the file.
   - Run the program by executing:
     ```bash
     ruby string_calculator.rb
     ```

## Running Tests
To ensure the correctness of the program, run the test cases:

1. Navigate to the project folder.
2. Run the tests using RSpec:
   ```bash
   rspec
   ```
3. The test results will display in the terminal, showing which tests passed or failed.

---

# Problem Statement

## String Calculator

Create a simple String calculator with a method signature:
```ruby
int Add(string numbers)
```

### Features
1. **Basic Functionality**:
   - The method can take up to two numbers, separated by commas, and will return their sum.
   - Examples:
     - Input: `""` → Output: `0`
     - Input: `"1"` → Output: `1`
     - Input: `"1,2"` → Output: `3`
   - For an empty string, the method should return `0`.

2. **Handle an Unknown Amount of Numbers**:
   - Extend the method to handle an unknown amount of numbers separated by commas.

3. **Support New Lines as Delimiters**:
   - Allow the method to handle new lines between numbers (in addition to commas).
   - Example:
     - Input: `"1\n2,3"` → Output: `6`
     - Invalid Input: `"1,\n"` (clarified but not required to handle).

4. **Support Different Delimiters**:
   - To change a delimiter, the beginning of the string will contain a separate line in this format:
     ```
     //[delimiter]\n[numbers...]
     ```
   - Example:
     - Input: `"//;\n1;2"` → Output: `3`
   - The first line specifying the delimiter is optional. All existing scenarios should still be supported.

5. **Handle Negative Numbers**:
   - Calling the `Add` method with a negative number will throw an exception with the message `"negatives not allowed"`, followed by the negative number(s).
   - Example:
     - Input: `"-1,2"` → Exception: `"negatives not allowed: -1"`
     - Input: `"-1,-2,3"` → Exception: `"negatives not allowed: -1, -2"`

6. **Ignore Large Numbers**:
   - Numbers bigger than 1000 should be ignored.
   - Example:
     - Input: `"2,1001"` → Output: `2`

7. **Support Delimiters of Any Length**:
   - Delimiters can be of any length, using the format:
     ```
     //[delimiter]\n
     ```
   - Example:
     - Input: `"//[***]\n1***2***3"` → Output: `6`

8. **Support Multiple Delimiters**:
   - Allow multiple delimiters using this format:
     ```
     //[delim1][delim2]\n
     ```
   - Example:
     - Input: `"//[*][%]\n1*2%3"` → Output: `6`
   - Delimiters can also have lengths longer than one character.

---

# Notes
- Begin with the simplest test cases and incrementally add complexity.
- Refactor code after each passing test.
- Follow TDD (Test-Driven Development) principles to ensure robust and clean code.

