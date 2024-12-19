import sys

output = sys.argv[1]

for i in range(1, 16):
    if i % 3 == 0 and i % 5 == 0:
        print('FizzBuzz', file=open(output, 'a'))
    elif i % 3 == 0:
        print('Fizz', file=open(output, 'a'))
    elif i % 5 == 0:
        print('Buzz', file=open(output, 'a'))
    else:
        print(i, file=open(output, 'a'))
