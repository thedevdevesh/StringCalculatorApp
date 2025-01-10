# String Calculator

A Ruby on Rails application that implements a String Calculator capable of performing addition operations on numbers provided as strings.

## Description

The String Calculator is a Ruby class that provides functionality to:
- Add numbers provided as comma-separated strings
- Handle empty strings (returns 0)
- Support custom delimiters
- Process multiple numbers
- Handle newline characters as delimiters
- Validate negative numbers

## Requirements

* Ruby version: 3.2.1
* Rails version: 7.2.2

## Installation

1. Clone the repository

2. Install dependencies:

```bash
bundle install
```

1. Set up the database:

 ```bash
 rails db:create
 rails db:migrate
 ```

### Running the Application

Start the Rails server:

```bash
rails server
```

## Usage

The StringCalculator class provides the following functionality:

```ruby
calculator = StringCalculator.new

# Empty string returns 0
calculator.add("") # => 0

# Single number returns the number itself
calculator.add("1") # => 1

# Two numbers separated by comma
calculator.add("1,5") # => 6

# Multiple numbers
calculator.add("1,2,3,4") # => 10

# Numbers with newline as delimiter
calculator.add("1\n2,3") # => 6

# Custom delimiter support
calculator.add("//;\n1;2") # => 3
```

## Features

1. **Basic Addition**: Can add numbers provided as strings
2. **Multiple Delimiters**: Supports both comma and newline as default delimiters
3. **Custom Delimiters**: Allows custom delimiter specification using the format "//[delimiter]\n[numbers]"
4. **Empty String Handling**: Returns 0 for empty string inputs
5. **Input Validation**: Includes validation for negative numbers

## Testing

The project includes comprehensive RSpec tests that verify:
- Empty string handling
- Single number processing
- Multiple number addition
- Custom delimiter support
- Newline delimiter support

To run the tests:

```bash
bundle exec rspec spec/models/string_calculator_spec.rb
```

## Project Structure

```
app/
  models/
    string_calculator.rb  # Main calculator implementation
spec/
  models/
    string_calculator_spec.rb  # Test suite
```

## Author

Devesh Kumar Singh