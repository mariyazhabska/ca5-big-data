#10354352 - Mariya Zhabska
#CALCULATOR

#1
#Fibonacci function
def fibonacci(n):
    a, b, counter = 0, 1, 0
    while True:
        if (counter > n): return
        yield a
        a, b = b, a + b
        counter += 1		
f = fibonacci(5)
print "1.Fibonacci sequence:"
for x in f:
    print x,
print 

#2
# Pythagorean triplets:
def pythagorean_triplets(n):
    for x in range(1,n): 
        for y in range(x,n): 
            for z in range(y,n):
                if x**2 + y**2 == z**2:
                    yield(x,y,z)
print "\n2.Pythagorean triplets:"
triplets = pythagorean_triplets(30)
for triplet in triplets:
    print triplet

#3
#Return even values
def is_even(values):
	return filter(lambda x: x%2==0, values)
print "\n3.Even numbers from a list:\n", is_even([47, 11, 42, 13])

#4
#Return odd values
def is_odd(values):
	return filter(lambda x: x%2, values)
print "\n4.Odd values from a list:\n", is_odd([47, 11, 42, 13])

#5
#conversions of C to F:
def fahrenheit(t):
    return ((float(9)/5)*t + 32)
def to_fahrenheit(values):
	return map(fahrenheit, values)
print "\n5.Conversion to fahrenheit:\n", to_fahrenheit([0,37,40])

#6
#conversions from F to C
def celsius(t):
    return (float(5)/9*(t - 32))
def to_celcius(values):
	return map(celsius, values)
print "\n6.Conversion to celcius:\n", to_celcius([0,32,100,212])

#7
#Maximum values from a list
def max(values):
	return reduce(lambda a,b: a if (a>b) else b, values)
print "\n7.Maximum value from a list:\n", max([47, 11, 42, 13])

#8
#Adding values
def add(values):
	return reduce(lambda a,b: a+b, values)
print "\n8.Product of values in a list:\n", add([47, 11, 42, 13])

#9
#to get the sum of an arithmetic progression
def sum(to):
	return reduce (lambda x,y: x+y, range(1, to+1))
print "\n9.Sum of an arithmetic progression:\n", sum(100)

#10
#Dividing numbers in a list
def divide(values):
	return reduce(lambda a,b: a/float(b) if (b != 0 and a != 'Nan') else 'Nan', values)
print "\n10.Dividing consecutive items in a list:\n", divide([47, 11, 0, 42, 13, 0])

