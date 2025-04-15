
#1) write a program in python to generate fibonacci series for a given number?

def fibonacci_series(n):
    if n <= 0:
        return []
    elif n == 1:
        return [0]
    else:
        fib_list = [0, 1]
        while fib_list[-1] + fib_list[-2] < n:
            next_fib = fib_list[-1] + fib_list[-2]
            fib_list.append(next_fib)
        return fib_list
num = int(input("Enter a number: "))
result = fibonacci_series(num)
print("Fibonacci Series:", result)

#2) write a program in python to compute whether the given integer number is a palindrome?

def is_palindrome(number):
    num_str = str(number)
    reversed_str = ""
    for char in reversed(num_str):
         reversed_str+=char
    return num_str == reversed_str
num = int(input("Enter an integer number: "))
if is_palindrome(num):
    print(f"{num} is a palindrome.")
else:
    print(f"{num} is not a palindrome.")
 
 #3)write a python program to convert a given decimal number to its corresponding binary number?
 
def decimal_to_binary(decimal_num):
    if decimal_num == 0:
       return "0"
    binary_str = ""
    while decimal_num > 0:
        remainder = decimal_num % 2
        binary_str = str(remainder) + binary_str
        decimal_num //= 2
    return binary_str
decimal_num = int(input("Enter a decimal number: "))
binary_num = decimal_to_binary(decimal_num)
print(f"Binary equivalent: {binary_num}")

#4) write a python program to convert a given binary number to its equivalent decimal number?

def binary_to_decimal(binary_num):
    decimal_num = 0
    power = 0
    for digit in reversed(binary_num):
        decimal_num += int(digit) * (2**power)
        power += 1
    return decimal_num
binary_num = input("Enter a binary number: ")
decimal_num = binary_to_decimal(binary_num)
print(f"Decimal equivalent: {decimal_num}")

#5) write a python program to compute pythagorean triplets up to a given maximum value?

def pythagorean_triplets(limit):
    triplets = []
    for a in range(1, limit + 1):
      for b in range(a,limit+1):
        c_squared= a**2+b**2
        c = int(c_squared**0.5)
        if c*c == c_squared and c <= limit:
          triplets.append((a,b,c))
    return triplets
limit = int(input("Enter the maximum value: "))
result = pythagorean_triplets(limit)
print("Pythagorean Triplets:", result)

#6) write a python program to compute the Highest Common Factor (HCF) of two numbers? 

def hcf(num1, num2):
    while num2:
        num1, num2 = num2, num1 % num2
    return num1
num1 = int(input("Enter the first number: "))
num2 = int(input("Enter the second number: "))
result = hcf(num1, num2)
print(f"The HCF of {num1} and {num2} is: {result}")

   
