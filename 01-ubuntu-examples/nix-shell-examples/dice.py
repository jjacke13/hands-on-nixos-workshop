import random

def roll_dice():
    die1 = random.randint(1, 6)
    die2 = random.randint(1, 6)
    print(f"You rolled: {die1} and {die2} (total: {die1 + die2})")

if __name__ == "__main__":
    roll_dice()
