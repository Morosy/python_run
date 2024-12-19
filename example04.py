import sys

path = sys.argv[1]
text = sys.argv[2]

try:
    with open(path, 'w', encoding='utf-8') as file:
        file.write(text)
    print(f"Text written to {path}")
except Exception as e:
    print(f"An error occurred: {e}")
