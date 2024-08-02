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
--]]

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
math.randomseed(os.time())
local selectedWord = words[math.random(#words)]
--System for user to create their own words and sort them in a table 
io.write("Enter your words separated by spaces that you can guess later:")
local wordlist = io.read():lower()
for i in string.gmatch(wordlist, "%S+") do
  newlist = i

end

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
