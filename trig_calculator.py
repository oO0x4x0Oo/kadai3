#!/usr/bin/python3

import sys
import math

PI = 3.1415926

def calculate_trigonometric_function(command, angle):
    if command == 's':
        result = math.sin(angle * PI / 180.0)
        return f"sin {angle:.1f}(deg) = {result:.3f}"
    elif command == 'c':
        result = math.cos(angle * PI / 180.0)
        return f"cos {angle:.1f}(deg) = {result:.3f}"
    elif command == 't':
        result = math.tan(angle * PI / 180.0)
        return f"tan {angle:.1f}(deg) = {result:.3f}"
    else:
        return "Invalid command. Please use 's', 'c', or 't'."

def main():
    if len(sys.argv) != 3:
        print("Usage: python script.py <command> <angle>")
        sys.exit(1)

    command = sys.argv[1]
    angle = float(sys.argv[2])

    result = calculate_trigonometric_function(command, angle)
    print(result)

if __name__ == "__main__":
    main()

