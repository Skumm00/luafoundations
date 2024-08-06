--Add Library! 
require "math"
function unit1()
  print("Printing, Data types and Variables.")
  A = 5
  B = 2 
  e = 3
  print("The result of addition and the remainder is "..A%B + e)
  B, C = "Hello", "World"
  print(C)
  B = type(C)

  -- Global and Local Vars Mini Project
  print("Global and Local Vars Mini Project")

  troops = 20

  function customTroops(addMore)
    local troops = 10
    troops = troops + addMore
    print(troops)
  end

  customTroops(20)
  print(troops)

  -- Returns the global troops value and the local value. Useful for modifying vars within a function
  print("Returns the global troops value and the local value. Useful for modifying vars within a function")

  -- Control Structures and Conditionals Grading Project
  print("Control Structures and Conditionals Grading Project")

  grade1, grade2, grade3, grade4, grade5 = 59, 70, 82, 99, 100
  report = "F"

  function grading(grade)
    -- defining the default grade for all. An F!
    print("defining the default grade for all. An F!")

    if grade >= 90 then
      local report = "A"
      print("Your Grade is a " .. report .. ". Yup, that's the highest score you can get. No A Pluses or anything like that... Sad")

    elseif grade >= 80 then
      local report = "B"
      print("Your grade is a " .. report .. ". I mean I guess it's ok but you can get better")

    elseif grade >= 70 then
      local report = "C"
      print("Your grade is a " .. report .. ". You got the average score but still... not good")

    elseif grade >= 60 then
      local report = "D"
      print("Your grade is a " .. report .. ". Damn, You need to study more!")

    else
      print("Your grade is a " .. report .. ". Wow, You really need to study a lot more.")
    end
  end

  -- running all the tests now
  print("running all the tests now")
  grading(grade1)
  grading(grade2)
  grading(grade3)
  grading(grade4)
  grading(grade5)

  -- Arithmetic Functions and more into it.
  print("Arithmetic Functions and more into it.")

  function travelmath(speed, distance)
    print("Speed is in MPH, distance is by miles and time is by the hour.")
    local time = distance / speed
    distance = time * speed
    speed = distance / time
    print(time .. " hours, ", distance .. " miles, ", speed .. " mph")
  end

  print(travelmath(20, 40))

  -- User maker:
  print("User maker:")

  function adduser(user, pass)
    print("Welcome " .. user .. " to our tutorial! Here is your password: " .. pass)
  end

  adduser("Kadu", "Kadu123")
end
function unit2()
  -- Recursive Functions
  print("Recursive Functions")

  function factorial(number)
    if number == 0 then
      return 1
    else
      return number * factorial(number - 1)
    end
  end

  print(factorial(5) .. " is the factorial")
  print("The factorial function calculates the factorial of a given number using recursion.")

  -- Loops and Conditionals
  print("Loops and Conditionals")

  -- Fibonacci Sequence
  print("Fibonacci Sequence")

  function fibonacci(n)
    if n <= 1 then
      return 1
    else
      return fibonacci(n - 1) + fibonacci(n - 2)
    end
  end

  for i = 0, 20 do
    print(fibonacci(i))
  end
  print("The fibonacci function generates the Fibonacci sequence up to the 20th term using recursion.")

  -- Numerical For Loop
  print("Numerical For Loop")

  for i = 2, 100, 10 do
    print(i)
  end
  print("This numerical for loop prints numbers from 2 to 100, incrementing by 10 each time.")

  -- Generic For Loop
  print("Generic For Loop")

  -- Iterates all values in the list
  print("Iterates all values in the list")

  function myIterator(s)
    local index = 0
    local length = #s
    return function() -- anonymous function
      index = index + 1
      if index <= length then
        return s[index], index -- more complicated way of returning everything in a list/or using ipairs
      end
    end
  end

  function genericFor(s)
    -- iterate the function using a for loop (non-numerical)
    for item, index in myIterator(s) do
      print(item, index)
    end
  end

  examplelist = {"Apple", "Cherry", "Banana"}
  genericFor(examplelist)
  print("The generic for loop iterates over a list of items and prints each item with its index.")

  -- While Loops
  print("While Loops")

  local j = 1
  while j <= 10 do
    print(j)
    j = j + 1
  end
  print("This while loop prints numbers from 1 to 10.")

  -- Repeat Loop
  print("Repeat Loop")

  local k = 1
  repeat
    print(k)
    k = k + 1
  until k > 10
  print("This repeat loop gives numbers from 1 to 10.")

  -- Outside and Inside Repeat Loops
  print("Outside and Inside Repeat Loops")

  local i = 1
  repeat
    print("Inside Loop: " .. i)
    i = i + 1
    if i == 4 then
      break
    end
  until i > 5
  print("This repeat loop prints numbers from 1 to 3 and then breaks out of the loop!")
end
function unit3()
  -- Mini project: make indexes and values from i and j
  print("make indexes and values from i and j")
  local i = 1 
  local j = 1 
  repeat
    print("i is: "..i.." and j is: "..j)
    j = j + 1 
    if j > 3 then
      j = 1
      i = i + 1
    end 
  until i > 3

  print("Nested version")
  local i = 1 
  repeat 
    local j = 1 -- declare your variables.
    print("--declare your variables.")
    repeat -- inner loop 
      print("i:"..i.." j:"..j)
      j = j + 1 
    until j > 3 -- outer loop
    print("--inner loop")
    i = i + 1 
  until i > 3
  print("--outer loop")
  print("Outside Loop "..i)

  -- Numerical Loops and recursion project.
  print("--Numerical Loops and recursion project.")

  -- #a is the length of a
  print("--#a is the length of a")
  function FindNegativeIndex(a)
    local pos = nil
    print("--currently the pos(position) does not have a value")
    -- currently the pos(position) does not have a value
    for i = 1, #a do -- calls a for loop. Starting point(1), ending point(a)
      print("--calls a for loop. Starting point(1), ending point(a)")
      if a[i] < 0 then -- if the list of the numbers:a , index value[i] is less than 0 then the pos would be i and break
        print("--if the list of the numbers:a , index value[i] is less than 0 then the pos would be i and break")
        pos = i
        break
      end
    end
    print("Index for negative number: "..pos) -- print at the end after all the if and for loops have been passed
    print("--print at the end after all the if and for loops have been passed")
  end

  -- run a test 
  print("--run a test")
  listofnumbers = {5, 100, 5, 1, 95600, 0, -4892}
  FindNegativeIndex(listofnumbers)
  -- should return the last test.
  print("--should return the last test.")
end
function unit4()
  -- Key pairs
  print("-- Key pairs")
  local person = {
      name = "Kadu",
      age = 15,
      area = "CALIFORNIA"
  }

  -- getting key pairs
  print(person.name)
  print(person.age)
  print(person.area)

  -- modifying these key pair values.
  person.age = 31
  print(person.age)

  -- Car Mini Project
  print("--Car Mini Project")
  local cars = {"Volks Wagon", "Lambo", "Buggati"}

  -- Access the elements of the car table
  print(cars[1])
  print(cars[2])
  print(cars[3])
  -- NOTICE HOW THE CARS ARE ACCESSED FROM 1 - NTH value. There is no 0 value in lua!

  -- Adding new stuff to the car table
  table.insert(cars, "Hummer")
  print(cars[4])

  -- Iterating over car table using ipairs
  for i, car in ipairs(cars) do
      print(i, car)
  end

  -- Iterating using generic Fors and Iterators (not ipairs)
  function carIterator(s)
    local index = 0
    local length = #s
    return function() -- anonymous function starts with return
      if index <= length then
        return s[index], index -- s[index] gets the names and index gets what number it's from
      end
    end
  end

  function iterateCars(s) -- All this does is print the logic.
    for index, length in carIterator(s) do
      print(index, length)
    end
  end

  iterateCars(cars)

  -- Store Mini Project
  print("-- Store Mini Project")
  local inventory = {
    {item = "Milk", quantity = 50, price = 1.50},
    {item = "Rice", quantity = 100, price = 2.00},
    {item = "Eggs", quantity = 75, price = 3.00},
    {item = "Cereal", quantity = 2, price = 10.00}
  }

  local function addInventory(item, quantity, price)
    table.insert(inventory, {item = item, quantity = quantity, price = price})
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

  local function printInventory()
    for i, v in ipairs(inventory) do
      print(v.item .. ": " .. v.quantity .. " available at $" .. v.price .. " each!")
    end
  end

  -- Add item
  addInventory("Grapes", 15, 1.2)

  -- Remove item
  removeItem("Banana")

  -- Update the quantity of how many
  updateQuantity("Apple", 20)

  -- Show the inventory
  printInventory()

  
  print("Whats being run is a store project in which you can add inventory, remove inventory, update and print the quantitiy and basicly everything that you want to do. There is also a cars mini project in which a table of car types are preseent")
end

--Sorting From Least to Greatest Functions
--Easy Method for premade array

function unit5()
  print("ipairs")
  s = {55,12,6,5,3}

  s[1],s[2],s[3],s[4],s[5],s[6] = s[3],s[1],s[6],s[2],s[5],s[4]

  for value in ipairs(s) do
    
    print(value)
    
  end

  --string modification because project needs for the next part
  -- String Manipulation Basics
  print("String Manipulation Basics")
  --basics 
  local firstName = "Skand"
  local lastName = "Bajpai"
  local fullName = firstName .. " " .. lastName
  print("Full Name: " .. fullName)

  --strings length
  print("strings length")
  local message = "Hello, Lua!"
  local length = #message
  print("Message Length: " .. length)

  --uppercase lowercase
  print("uppercase and lowercase")
  local uppercaseMessage = message:upper()
  local lowercaseMessage = message:lower()
  print("Uppercase: " .. uppercaseMessage)
  print("Lowercase: " .. lowercaseMessage)

  -- Substrings
  print("Substrings")
  local substring = message:sub(7, 9)  -- Gets "Lua"
  print("Substring: " .. substring)

  --replace
  print("Using replace")
  local replacedMessage = message:gsub("Lua", "World")
  print("Replaced: " .. replacedMessage)

  --remove whitespace
  print("Removing whitespace")
  local paddedString = "   Trim Me   "
  local trimmedString = paddedString:match("^%s*(.-)%s*$")
  print("Trimmed: " .. trimmedString)

  --split
  print("splitting")
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
end

function unit6()
  function sorting(array)
    local function logic()
      local swapped = false
      index = 1
      repeat
        if array[index] < array[index + 1] then
          array[index],array[index + 1] = array[index + 1],array[index]
          swapped = true
        end
        index = index + 1
      until index >= #array
      return swapped
    end

    local swapped
    repeat
      swapped = logic()
    until not swapped

    for i = 1, #array do
      print(" | New Sort:"..array[i])
    end
  end

  
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
  print("A Multiplacation table!")
  --Sum Of Squares loop
  function sum(n)
    local sum = 0
    for i = 1,n do
      sum = sum + i^2
    end
    print("The Sum of the Squares of "..n.." is "..sum)
  end
  --diferent tests
  sum(3)
  sum(4)
  sum(2)
  print("A sum of squares loop using numerical loops")
  --Number of digits function
  function numofdigits(n)
    local count = 0
    local temp = n
    if temp == 0 then
      count = 1
    else
      while temp > 0 do
        temp = math.floor(temp/10)
        count = count + 1
      end
    end
    print("The number of digits of " .. n .. " is " .. count .. "!")
  end
  --Running Tests
  numofdigits(1212)
  numofdigits(12)
  numofdigits(42)
  print("The Number of digits loop using numerical for loops as well!")
  --reverse Number
  function reverse(n)
    local remain = 0
    local n = n
    if n == 0 then
      print(0)
    else
      local reverse = ""
      while n ~= 0 do
        remain = n% 10
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
  print("Reverse Number Numerical Loop. Original Numbers: 124,11,33")
  --Square root Functions Mini Project
  function findsquare(n)
    local square = n * n
    local squareroot = math.sqrt(n)
    print("The square and square root are "..square..", "..squareroot)
  end
  --Now going to run tests
  findsquare(5)
  findsquare(4)
  print("Square Root Function")
  --Finding the largerst prime number compared to something 
end

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

function unit7()
  function findprime(n)
    
    for i = n-1,2,-1 do
      if is_prime() then --define the function is_prime()
        
        return i
      end
    end
    print("numerical for loop, starting from the number next to n to 2(last prime num). Range is negative 1 because we need to minus 1")
    return nil --automaticly returns nil if the user doesnt put something correct   
  end
  --run test
  is_prime(3)
  is_prime(6)
  is_prime(9)
  is_prime(30)
  print("Here is the prime number. Example numbers used:3,6,9,30")
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
  print("Advanced airhmetic series")
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
  print("Postcard and stamp project.Getting the minimum number of stamps(p and j) in a value of cents which equal to n. Example Numbers used: 31,8,25,34")
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
end

function unit8()
  --school grades project 
  -- Make a grading system and change the scores project
  print("School Grades Project. Grading system and a changing score system")
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
  print("Now anonomyus functions(lambda)!")
  -- Assign a anonymous function to a variable
  local add = function(a, b)
      return a + b
  end
  print("Assigns a anonymous function to a variable! ")
  print(add(2, 3)) --Gives 5 as output

  -- Using a anonomyus function directly
  print((function(a, b) return a * b end)(4, 5)) -- Output: 20
  print("Using Directly")
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
  print("returns a anonymous function fron another function")
  local double = createMultiplier(2)
  print(double(5)) --Gives 10 as output

  local triple = createMultiplier(3)
  print(triple(5)) --Gives 15 as output

end
function unit9()
   --Story Game
   local scenarios = {} --make a table so scenarios are already defined
   
   scenarios.start = function()
     print("You are in a world of Horror. Where do you decide to travel to? left/right")
     local choice = io.read()
     if choice == "left" then
       print("left")
       scenarios.left()
     elseif choice == "right" then
       print("right")
       scenarios.right()
     else
       print("Enter a valid choice!")
       scenarios.start()
     end
   end
   
   scenarios.left = function()
     print("You chose the path to go left.. As you walk across an empty field of dead trees, you find a ravine with light coming from the bottom. As you walk closer, you then notice it is filled with dangerous lava. As you try to leave, you see that the path you went on, has started to fill with lava as well and only see a rope, and a stone bridge to travel across before the lava gets to you. What do you pick? bridge/rope")
     local choice = io.read()
     if choice == "bridge" then
       print("bridge")
       scenarios.bridge()
     elseif choice == "rope" then
       print("rope")
       scenarios.rope()
     else
       print("Enter a valid choice!")
       scenarios.left()
     end
   end
   
   scenarios.right = function()
     print("You go right and keep walking to a place that seems to stretch for infinity and not go anywhere. As you keep going you see that slowly everything disappears from sight and all the trees and bushes are gone. As you advance, you think that you chose the wrong path and start to get hungry. You then come by a random banana in the middle of nowhere and an ugly horrifying snail. What do you want to eat? snail/banana")
     local choice = io.read()
     if choice == "snail" then
       print("snail")
       scenarios.snail()
     elseif choice == "banana" then
       print("banana")
       scenarios.banana()
     else
       print("Enter a valid choice!")
       scenarios.right()
     end
   end
   
   scenarios.bridge = function()
     print("You chose to cross the bridge. The bridge is old and cracked and you think that if you try to cross it, it will break. But the lava is getting closer and closer, so you have no choice. Do you cross the bridge? Yes or No? yes/no")
     local choice = io.read()
     if choice == "yes" then
       print("You passed the bridge and now you are able to leave finally!")
     elseif choice == "no" then
       print("You believe the bridge is too dangerous but that's the worst decision you made. Soon the bridge is covered with lava and it rises, to the point where you can't escape. You Lost.")
     else
       print("Enter a valid choice!")
       scenarios.bridge()
     end
   end
   
   scenarios.rope = function()
     print("You try leaving by rope, but it breaks and you fall into the lava. YOU LOST")
   end
   
   scenarios.snail = function()
     print("You chose to eat the snail. The snail is ugly and slimy, but you are so hungry that you don't care. As you gobble it down, suddenly you feel yourself flying. Soon you fly out of this hellish landscape and leave! You Win")
   end
   
   scenarios.banana = function()
     print("You eat the banana which looks amazing but turns out is poisoned. You Lost :(")
   end
   
   local function game()
     scenarios.start()
   end
   
  game()
end
function help()
  print("To run a unit just type in unit followed by the number you want the unit of and finish it of like your calling a function. Example: unit4(). The Units are from easiest to hardest covering the basics and core foundations of Lua which were all made by me to build my foundations. It is recemonded to look at the code if you dont understand what is being run but for the most part, it is not required. We chose this instead of a traditional UI because we want to keep the feeling of coding alive for everyone! Even those who dont know how to.")
  print("Enter a unit, from 1-9. Example: unit1(), if you want more help, type '/help'")
  local searcher = io.read()
  search(searcher)
end
function search(input)
  if input == "unit1()" then
    print("Unit 1: Introduction to Lua")
    unit1()
    elseif input == "unit2()" then 
    print("Unit 2: Generic Functions, Loops, and Iterators")
    unit2()
    elseif input == "unit3()" then 
    print("Unit 3: Nested Loops, Recursion and String Length")
    unit3()
    elseif input == "unit4()" then 
    print("Unit 4: tables, generic For Loops, and keypairs")
    unit4()
    elseif input == "unit5()" then 
    print("Unit 5: Ipairs and String Modification")
    unit5()
    elseif input == "unit6()" then 
    print("Unit 6: Applying the foundations you learnt for sorting, multiplication tables,ect.")
    unit6()
    elseif input == "unit7()" then 
    print("Unit 7: Arithmetic Series and other types of projects")
    unit7()
    elseif input == "unit8()" then 
    print("Unit 8: Anonymous Functions, advanced numerical for loops, school project")
    unit8()
  elseif input == "unit9()" then 
    print("Unit 9: Just a cool Story Game!")
    unit9()
  elseif input == "/help" then
    help()
  end
end
print("Enter a unit, from 1-9. Example: unit1(), if you want more help, type '/help'")
local searcher = io.read()
search(searcher)
