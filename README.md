# Sparta_Global_FizzBuzz_Codealong

## Aim
To show best practice for unit testing by writing code out in a structured manner that follows best practices.


## Test Driven Development
Test driven development is the method of writing tests prior to code development, beginning with a test that fails. After this the code is written to pass the test and then is refactored to be as efficient as possible.

For this task, tests were developed for methods that generated a fizzbuzz array, for a sum of multiples of three and five in a given range and for a sum of even numbers in the fibonacci sequence for a given end point.

Modules were also implemented to keep code DRY by putting common methods in a location that is accessible by multiple classes.

### FizzBuzz
FizzBuzz is a method that takes in a given range, and then evaluates each number. If the number is divisible by 3 it is shown in the output as "Fizz", if the number is divisible by 5 it is displayed as "Buzz". If a number is divisible by both it is shown as "FizzBuzz". The numbers and strings are then pushed to an array.

### Multiples of 3 and 5
The multiples of 3 and 5 method will sum every number that is a multiple of 3 or a multiple of 5 in a given range, returning the total.

### Fibonacci vs Fabonacci
The fibonacci file and spec detail how I worked through the task as homework. The fabonacci files relate to a class walkthrough of the problem the following day to show the correct way to complete the task.

### Largest Prime Factor
There are two main parts to this method. Firstly, a range is given and every prime number within that range is pushed to an array. Secondly, this array is compared with an integer to find the prime factors. These are entered into an array in ascending order to make the largest factor easily identifiable.

### Palindromes
Palindromes are numbers that are the same value when reversed. The method is designed to check whether all products of values in a given range are palindromes and determine which is the largest. The method goes through every product, removing duplicates, before comparing the values in the array to a second array of integers that are reversed from the original value. All instances where the two values are identical are palindromes and are pushed to a new array. Once this process is complete the largest palindrome is found from the resultant array.
