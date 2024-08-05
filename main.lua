--Add Library! 
require "math"

--[[
--Data Types/Operators/Basics
print("Hello World")
--Modulo Operators and global/local variables
local e = 2
A =10
B=3

print(A%B + e)

B,C = "Hello", "World"
print(C)
 B = type(C)

--Global and Local Vars Mini Project

troops = 20

function customTroops(addMore)
  local troops = 10
  troops = troops + addMore
  print(troops)
end

customTroops(20)
print(troops)
--Returns the global troops value and the local value. Useful for modifying vars within a funciton
--Control Structures and Conditionals Grading Project
grade1,grade2,grade3,grade4,grade5 = 59,70,82,99,100
report = "F"
function grading(grade)
  --defining the default grade for all. An F!
  
  if grade >= 90 then
    local report = "A"
    print("Your Grade is a "..report..".Yup, thats the highest score you can get. No A Pluses or anything like that... Sad")
    
  elseif grade >= 80 then
    local report = "B"
    print("Your grade is a "..report..".I mean I guess its ok but you can get better")
    
  elseif grade >= 70 then
    local report = "C"
    print("Your grade is a "..report..".You got the average score but still... not good")
  elseif grade >= 60 then
    local report = "D"
    print("Your grade is a "..report..".Damn, You need to study more!")
  else
    print("Your grade is a "..report..".Wow, You really need to study a looot more.")
  end
end
--running all the tests now
grading(grade1)
grading(grade2)
grading(grade3)
grading(grade4)
grading(grade5)

--Arithmetic Functions and more into it.
function travelmath(speed,distance)
  print("Speed is in MPH, distance is by miles and time is by the hour.")
  local time = distance/speed
  distance = time * speed
  speed = distance/time
   print(time.." hours, ", distance.." miles, ", speed.." mph")
end

print(travelmath(20, 40))

--User maker:
function adduser(user,pass)
  print("Welcome "..user.." to our tutorial! Here is your password: "..pass)
end
adduser("Kadu","Kadu123")

--recursive functions
function factorial(number)
  if number == 0 then
    return 1
  else
    return number* factorial(number-1)
  end
end

print(factorial(5).." is the factorial")

--Loops and Conditionals

--Fibonati Sequence
function fibonacci(n)
  if n <= 1 then
    return 1
  else
    return fibonacci(n-1) + fibonacci(n-2)
  end
end

for i = 0,20 do
  print(fibonacci(i))
end
fibonacci(10)
--Loops
    --numerical for loop
for i = 2,100,10 do
  print(i)
end
--Generic For Loop

--iterates all values in the list
function myIterator(s)
  local index = 0
  local length = #s
  return function()--anonomyus function
    index = index + 1
    if index <= length then
      return s[index],index --more complicated way of returning everything in a list/or using ipairs
    end
  end
end
function genericFor(s)
  --iterate the function using a for loop(non numerical)
  for item,index in myIterator(s) do
    print(item,index)
  end
end
examplelist = {"Apple","Cherry","Banana"}
genericFor(examplelist)
--while loops
local j = 1
while j <= 10 do
  print(j)
  j = j + 1
end
--repeat loop
local k = 1
repeat
  print(k)
  k = k + 1
  until k > 10
--Outside and Inside repeat loops
local i = 1 
repeat 
  print("Inside Loop: "..i)
  i = i+1 
  if i == 4 then
    break
  end
until i >5
--mini project: make indexes and values from i and j
print("Normal version of this algorithim")
local i = 1 
local j = 1 
repeat
  print("i is: "..i.." and j is: "..j)
  j = j+1 
  if j > 3 then
    j = 1
    i = i+1
  end 
until i > 3
print("Nested version")
local i = 1 
repeat 
  local j = 1 --declare your variables.
  repeat --iner loop 
     print("i:"..i.." j:"..j)
    j = j+1 
  until j > 3 --outer loop
  i = i+1 
until i > 3
--Same thing except this is nested.
print("Outside Loop"..i)

--Numerical Loops and recursion project.

--#a is the length of a
function FindNegativeIndex(a)
  local pos = nil
  --curenty the pos(position) does not have a value
  for i = 1,#a do --calls a for loop. Starting point(1), ending point(a)
    if a[i] < 0 then -- if the list of the numbers:a , index value[i] is less then 0 then the pos would be i and break
      pos = i
      break

    end

  end
  print("Index for negative number:"..pos)--print at the end after all the if and for loops have been passed
end
--run a test 
listofnumbers = {5,100,5,1,95600,0,-4892}
FindNegativeIndex(listofnumbers)
--should return the last test.

--TABLES
-- Key pairs
local person = {
    name = "Kadu",
    age = 15,
    area = "CALIFORNIA"
}

-- getting key pairs
print(person.name)
print(person.age)
print(person.area)

--modifying these key pair values.
person.age = 31
print(person.age)

--Car Mini Project
local cars = {"Volks Wagon", "Lambo", "Buggati"}

-- Accesse the elements of the car table
print(cars[1])
print(cars[2])
print(cars[3])
--NOTICE HOW THE CARS ARE ACCESED FROM 1 - NTH value. There is no 0 value in lua!

-- Adding new stuff to the car table
table.insert(cars,"Hummer")
print(cars[4])
-- Iterating over car table using ipairs
for i, cars in ipairs(cars) do
    print(i, cars)
end

--Iterating using generic Fors and Iterators(not ipairs)
function carIterator(s)
  local index = 0
  local length = #s
  return function()--anonomyus function starts with return
    if index <= length then
      return s[index],index --s[index] gets the names and index gets what number its from
    end
  end
end

function iterateCars(s)--All this does is print the logic.
  for index,length in carIterator(s) do
    print(index,length)
  end
end
iterateCars(cars)
--Store Mini Project

local inventory = {
  {item ="Milk", quantity = 50, price = 1.50},
  {item = "Rice", quantity = 100,price = 2.00},
  {item = "Eggs", quantity = 75, price = 3.00},
  {item = "Cereal", quanity = 2, price = 10.00}
}

local function addInventory(item, quantity, price)
  table.insert(inventory, {item = item, quantity = quantity,price = price})
end

local function removeItem(item)
    for i, v in ipairs(inventory) do
        if v.item == item then
            table.remove(inventory, i)
            break
        end
    end
end

local function updateQuantity(item, quantity)
  for i, v in ipairs(inventory) do
      if v.item == item then
          v.quantity = quantity
          break
      end
  end
end

--update the quantity
local function printInventory()
  for i, v in ipairs(inventory) do
      print(v.item .. ": " .. v.quantity .. " available at $" .. v.price .. " each!")
  end
end

-- Add item
addInventory("Grapes", 15, 1.2)

-- Remove item
removeItem("Banana")

--uPdate the quantity of how many
updateQuantity("Apple", 20)

-- Show the inventory
printInventory()


--Sorting From Least to Greatest Functions
--Easy Method for premade array

s = {55,12,6,5,3}

s[1],s[2],s[3],s[4],s[5],s[6] = s[3],s[1],s[6],s[2],s[5],s[4]

for value in ipairs(s) do
  
  print(value)
  
end

--string modification becaudrbthis priject needs for the next part
-- String Manipulation Basics

--basics 
local firstName = "Skand"
local lastName = "Bajpai"
local fullName = firstName .. " " .. lastName
print("Full Name: " .. fullName)

--strongs length
local message = "Hello, Lua!"
local length = #message
print("Message Length: " .. length)

--uppercase lowercase
local uppercaseMessage = message:upper()
local lowercaseMessage = message:lower()
print("Uppercase: " .. uppercaseMessage)
print("Lowercase: " .. lowercaseMessage)

-- Substrings
local substring = message:sub(7, 9)  -- Gets "Lua"
print("Substring: " .. substring)

--replace
local replacedMessage = message:gsub("Lua", "World")
print("Replaced: " .. replacedMessage)

--remove whitespace
local paddedString = "   Trim Me   "
local trimmedString = paddedString:match("^%s*(.-)%s*$")
print("Trimmed: " .. trimmedString)

--split
local csvData = "apple,banana,orange"
local fruits = {}
for fruit in csvData:gmatch("[^,]+") do
    table.insert(fruits, fruit)
end
print("Fruits: " .. table.concat(fruits, ", "))

--prefixes suffixes
local startsWithHello = message:find("^Hello") ~= nil
local endsWithLua = message:find("Lua!$") ~= nil
print("Starts with 'Hello': " .. tostring(startsWithHello))
print("Ends with 'Lua!': " .. tostring(endsWithLua))


--main project for string modifcation
-- Word Guessing Game

-- Initialize a list of words (you can add more!)
local words = {
    "skand",
    "hacklub",
    "apple",
    "error",
    "fun"
}

-- get a random word from list

--hide charachters
function hideCharacters(word)
    local hidden = ""
    for i = 1, #word do
        hidden = hidden .. "_" --repeats all the hidden words
    end
    return hidden
end

-- Recursive function so the guessed characters get revealed
function revealCharacters(word, hidden, guess, index)
    if index > #word then
        return hidden
    end
    local char = word:sub(index, index)
    if char == guess then
        hidden = hidden:sub(1, index - 1) .. char .. hidden:sub(index + 1)
    end
    return revealCharacters(word, hidden, guess, index + 1)
end

-- Main game loop
local guessedWord = hideCharacters(newlist)

local attempts = 5

print("Welcome to the GUESSER")
print("Guess the hidden word (you have " .. attempts .. " trys): " .. guessedWord)

while attempts > 0 do
    io.write("Enter your guess: ")
    local guess = io.read():lower()

    if selectedWord:find(guess, 1, true) then
        guessedWord = revealCharacters(selectedWord, guessedWord, guess, 1)
        print("Correct! Word so far: " .. guessedWord)
    else
        attempts = attempts - 1
        print("Wrong! Attempts remaining: " .. attempts)
    end

    if guessedWord == selectedWord then
        print("Nice! You guessed the word: " .. selectedWord)
        break
    end
end

if guessedWord ~= selectedWord then
    print("No more trys.the word was: " ..selectedWord)
  
end

function sorting(array)
  local function logic()
    
    local swapped = false --checks how many times the stuff in the array got swapped
    
    index = 1 --selected the partion(first num of array)
    
    repeat --starts the repetat loop 
      if array[index] < array[index + 1] then
        
        array[index],array[index + 1] = array[index + 1],array[index]
        swapped = true
        
      end 
      index = index + 1 --keep adding 1
    until index >= #array --keep doing until the length of the array is less then the index
    return swapped --does all the repeating
  end 

  local swapped
  repeat
    swapped = logic()
  until not swapped --keep repeating until no swaps are needed

  for i = 1, #array do 
    print(array[i].." Sorted!")--Now finnaly just print the array entireley! Uses stuff we did before
    
  end
end

local test1 = {55,12,71,2,11,24}
local test2 = {1900,42,42,89,70,12}
sorting(test1)
sorting(test2)
--ALL TESTS PASS

--Multiplication Table
function multiplicationTable(number)
  for i = 1,10 do 
    multiply = i * number
    print("multiypling "..number.." by "..i..". Result: "..multiply)
  end
end
--running different tests
multiplicationTable(5)
multiplicationTable(6)
multiplicationTable(7)

--Sum Of Squares loop 
function sum(n)
  local sum = 0
  for i = 1,n do --no step required   
    sum = sum + i^2
    --dont print here because it will just repeatedly print everyting
  end
  print("The Sum of the Squares of "..n.." is "..sum)--print here because it prints after all the maths done :)
end
--diferent tests
sum(3)

sum(4)

sum(2)

--Number of digits function
function numofdigits(n)
    local count = 0
  
    local temp = n

    if temp == 0 then  -- Base Case if something equal to that
        count = 1
    else
        while temp > 0 do
          temp = math.floor(temp/10)  --Divide by 10 and addin 1 to the count!
            count = count + 1
        end
    end

    print("The number of digits of " .. n .. " is " .. count .. "!")
end
--Running Tests 
numofdigits(1212)
numofdigits(12)
numofdigits(42)
--reverse Number 

function reverse(n)
    local remain = 0
    local n = n
    if n == 0 then  -- initial Base case of 0
        print(0)
    else
        local reverse = ""
        while n ~= 0 do
            remain = n% 10  --rightmost digit
            n = math.floor(n/10)
            reverse = reverse..remain
        end
        print("The Reverse is "..reverse)
    end
end

--tests 
test1 = 124
test2 = 11
test3 = 33
reverse(test1)
reverse(test2)
reverse(test3)

--Square root Functions Mini Project 
function findsquare(n)
  local square = n * n 
  local squareroot = math.sqrt(n) --Use the math library 
  print("The square and square root are "..square..", "..squareroot) --returns both the values
end
--Now going to run tests 
findsquare(5)
findsquare(4)

--Finding the largerst prime number compared to something 

function is_prime(n) --now the function is_prime
  if n < 2 then 
    return false --invalid statement 
    
  elseif n%2 == 0 then 
    print(n.." is not prime!")
    
  elseif n%2 ~= 0 then
     --remainder of a prime number should not be 0
    print(n.." Is prime")
    
  end
end

function findprime(n)
  
  for i = n-1,2,-1 do
    if is_prime() then --define the function is_prime()
      
      return i
    end
  end
  --numerical for loop, starting from the number next to n to 2(last prime num). Range is negative 1 because we need to minus 1
  return nil --automaticly returns nil if the user doesnt put something correct   
end
--run test
is_prime(3)
is_prime(6)
is_prime(9)
is_prime(30)

--Arithmetic Series 
function arithmetic_series(a, d, n)
    local sum = 0
  
    for i = 0, n - 1 do
        sum = sum + (a + i * d)
    end
  
    return sum
end

arithmetic_series(1,9,7)
arithmetic_series(3,4,7)
arithmetic_series(5,3,8)

--Postcard and stamp project.Getting the minimum number of stamps(p and j) in a value of cents which equal to n 
function stamps(n)
  local p = 0
  local q = 0
  --Getting Q
  while n >= 4 and n%7 ~= 0 do
    q = q+ 1
    n = n-4
  end 
  
  --Getting N(the number of 7  value stamps)
  p =math.floor(p/7)

  print("The Number of 4 cent stamps needed are "..p.." and the number of 7 cent stamps needed are "..q)
end

stamps(31)
stamps(8)
stamps(25)
stamps(34)

--Factorial Mini Project 

function factorial(n) 
  if n == 0 then 
     print("The factorial of "..n.." is 1")
  elseif n == nil then 
    print("tHERES A ERROR!")
    return nil
    
  else
    result = n * factorial(n-1) --the logic of the factorial function
  end
  return result
end

factorial(3)

--Madlibs Project 
function madlibs(template)
  while template:find("Noun") do
    io.write("Enter a Noun: ")
    local noun = io.read()
    template = template:gsub("Noun", noun, 1)
  end

  while template:find("Adjective") do
    io.write("Enter an Adjective: ")
    local adjective = io.read()
    template = template:gsub("Adjective", adjective, 1)
  end

  while template:find("Verb") do
    io.write("Enter a Verb: ")
    local verb = io.read()
    template = template:gsub("Verb", verb, 1)
  end

  return template
end

--Testing the madblibs
exampletemp = "Noun was a Adjective person who played a lot. He liked to Verb."
local story = madlibs(exampletemp)
print(story)

--school grades project 
-- Make a grading system and change the scores project
school = {
    name = {'TIMMEH', 'RAJESH', 'KADU', 'Billy', 'Raj'},
    scores = {29, 49, 99, 48}
} -- the list of all the names

double = {0, 4, 8, 12, 16} -- the list of numbers used to classify
value = {}

for i = 1, #double do
    if double[i] % 2 == 0 then
        table.insert(value, 'even')
    else
        table.insert(value, 'odd')
    end
end
-- used to classify if a list of numbers is even or odd.
for i = 1, #value do
    print(value[i])
end

for i = 1, #school.scores do
    school.scores[i] = school.scores[i] * 2
end

print("Updated scores:")
for i = 1, #school.scores do
    print(school.scores[i])
end

print("Data of the school:")
for key, val in pairs(school) do
    print(key .. ":")
    for i = 1, #val do
        print(val[i])
    end
end
--anonomyus functions(lambda)

-- Assign a anonymous function to a variable
local add = function(a, b)
    return a + b
end

print(add(2, 3)) --Gives 5 as output

-- Using a anonomyus function directly
print((function(a, b) return a * b end)(4, 5)) -- Output: 20

  -- Passing an anonymous function as the argument
function operate(func, x, y)
    return func(x, y)
end

local result = operate(function(a, b) return a - b end, 10, 3)
print(result) --Gives 7 as output

-- returns anonomyus function from an other function.
function createMultiplier(factor)
    return function(x)
        return x * factor
    end
end

local double = createMultiplier(2)
print(double(5)) --Gives 10 as output

local triple = createMultiplier(3)
print(triple(5)) --Gives 15 as output
--]]
--Story Game
local scenarios = {
start = function()
  currentScenario = "start"
  print("You are in a world of Horror. Where do you decide to travel to?")
  local choice = io.read()
  if choice == "left" then
    currentScenario = "left"
    scenarios.left()
  elseif choice == "right" then
    currentScenario = "right"
    scenarios.right()
  else
    print("Enter a valid choice!")
    scenarios.start()
  end
end,
left = function()
  currentScenario = "left"
  print("You chose the path to go left.. As you walk across an empty field of dead trees, you find a ravine with light coming from the bottom. As you walk closer, you then notice it is filled with dangerous lava. As you try to leave, you see that the path you went on, has started to fill with lava as well and only see a rope, and a stone bridge to travel across before the lava gets to you. What do you pick?")
  local choice = io.read()
  if choice == "bridge" then
    currentScenario = "bridge"
    scenarios.bridge()
  elseif choice == "rope" then
    currentScenario = "rope"
    scenarios.rope()
  else
    print("Enter a valid choice!")
    scenarios.left()
  end
end,
right = function()
  currentScenario = "right"
  print("You go right and keep walking to a place that seems to stretch for infinity and not go anywhere. As you keep going you see that slowly everything disappears from sight and all the trees and bushes are gone. As you advance, you think that you chose the wrong path and start to get hungry. You then come by a random banana in the middle of nowhere and an ugly horrifying snail. What do you want to eat?")
  local choice = io.read()
  if choice == "snail" then
    currentScenario = "snail"
    scenarios.snail()
  elseif choice == "banana" then
    currentScenario = "banana"
    scenarios.banana()
  else
    print("Enter a valid choice!")
    scenarios.right()
  end
end,
bridge = function()
  currentScenario = "bridge"
  print("You chose to cross the bridge. The bridge is old and cracked and you think that if you try to cross it, it will break. But the lava is getting closer and closer, so you have no choice. Do you cross the bridge? Yes or No?")
  local choice = io.read()
  if choice == "Yes" then
    print("You passed the bridge and now you are able to leave finally!")
    currentScenario = nil
  elseif choice == "No" then
    print("You believe the bridge is too dangerous but that's the worst decision you made. Soon the bridge is covered with lava and it rises, to the point where you can't escape. You Lost.")
    currentScenario = nil
  else
    print("Enter a valid choice!")
    scenarios.bridge()
  end
end,
rope = function()
  currentScenario = "rope"
  print("You try leaving by rope, but it breaks and you fall into the lava. YOU LOST")
  currentScenario = nil
end,
snail = function()
  currentScenario = "snail"
  print("You chose to eat the snail. The snail is ugly and slimy, but you are so hungry that you don't care. As you gobble it down, suddenly you feel yourself flying. Soon you fly out of this hellish landscape and leave! You Win")
  currentScenario = nil
end,
banana = function()
  currentScenario = "banana"
  print("You eat the banana which looks amazing but turns out is poisoned. You Lost :(")
  currentScenario = nil
end,
}


function gamestart()
  currentScenario = "start"
  while currentScenario do
    scenarios[currentScenario]()
  end
end
gamestart()

