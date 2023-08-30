import argparse


def parse_input() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("value", help="Value for coding task", type=int)
    args = parser.parse_args()
    if args.value <= 1:
        print(f"Your value should be more than 1. Actual value {args.value}")
    return args.value


def count_backwards(value: int) -> None:
    for n in range(value, 0, -1):
        if n % 5 == 0 and n % 3 == 0:
            print("Testing")
        elif n % 5 == 0:
            print("Agile")
        elif n % 3 == 0:
            print("Software")
        else:
            print(n)


if __name__ == "__main__":
    user_value: int = parse_input()
    count_backwards(user_value)
