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