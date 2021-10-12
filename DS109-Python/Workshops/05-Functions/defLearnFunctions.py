# Define the Function

newAge = " "

def NotThatOld(age, increment): 
    global newAge
    newAge = age - increment
    print(newAge)

# Call the Function

NotThatOld(55, 10)

# Creating a lambda function

LambdaOld = lambda x,y : x - y 
print(LambdaOld(55, 10))

# Using the map function to iterate

ages = [32, 57, 39, 75]
increments = [4, 20, 2, 10]

mapIt = map(LambdaOld, ages, increments)
listIt = list(mapIt)
print(listIt)

# Using the filter function to iterate

overTheHill = lambda x: x > 50
filterIt = filter(overTheHill, ages)
listIt2 = list(filterIt)
print(listIt2)