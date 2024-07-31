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

function lcm(a,b)
  
end
--]]
--Loops and Conditionals
--GCD functions
function GCD(a,b)
  if b == 0 then
    return a
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

--Loops
    --for loop
for i = 1, 10 do
  print(i)
end
--white loops
local j = 1
while j <= 10 do
  print(j)
  j = j + 1
end

local k = 1
repeat
  print(k)
  k = k + 1
  until k > 10

for i = 10, 1, -1 do
  print(i)
end

local numbers = {1, 2, 3, 4, 5}
for index, value in ipairs(numbers) do
  print(index, value)
end

local sum = 0
for i = 1, 5 do
  sum = sum + i
    end
  print(sum)
end

