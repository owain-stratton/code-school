# Describe Monty Python's Work
montyPython = 'Monty Python'
print(montyPython)
print(len(montyPython))

# Perform a string slice
word = 'Python'
print(word[2:5])

# String slice beginning
print(word[:2])

# String slice at end
print(word[2:])

# thing >> ting


# Calculate the halfway index
word1 = 'Good'
half1 = len(word1) / 2  # Returns integer (in Python 3 this would return a float so you would need to perform double division i.e. len(word1) // 2)

word2 = 'Afternoon'
half2 = len(word2) / 2  # Returns integer

print(half1, half2)


# Conditionals
numKnights = 4
day = 'Wednesday'

if numKnights < 5:
    print('Retreat!')
    print('Raise the white flag!')
else:
    print('truce')

# Conditionals with boolean operands
if numKnights < 3 or day == 'Monday':
    print('Retreat!')
elif numKnights >= 10 and day == 'Wednesday':
    print('Trojan horse!')
else:
    print('Truce?')

# Input function for user Input
userKnights = int(input('Enter how many knights are in your army'))

print('You entered:', userKnights)
if userKnights > numKnights:
    print('Users army charge!!')
elif userKnights < numKnights:
    print('numKnights army charge!!')
else:
    print('Truce?')

# Nested Conditionals
enemy = input('Enter a type of enemy')

if enemy == 'killer bunny':
    print('Holy hand grenade!')
else:
    if userKnights > numKnights:
        print('Users army charge!!')
    elif userKnights < numKnights:
        print('numKnights army charge!!')
    else:
        print('Truce?')
