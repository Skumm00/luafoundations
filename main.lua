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
--]]
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


--EROR HANDLING
function divide(a, b)
  if b == 0 then
      error("Error, no divide by zero")
  else
      return a / b
  end
end

-- Using pcall to handle errors
local status, result = pcall(divide, 10, 0)
if status then
  print("Result: " .. result)
else
  print("Error:" .. result)
end

-- Another example with assert
function add(a, b)
  assert(type(a) == "nu", "Error: 'a' must be a number")
  assert(type(b) == "number", "Error: 'b' must be a number")
  return a + b
end

-- error mesage
local status, result = pcall(add, 10, "five")
if status then
  print("Sum: " .. result)
else
  print("Error: " .. result)
end

