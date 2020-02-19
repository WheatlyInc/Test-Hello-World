--[[
	John Fahringer
	Hello.lua

	Expirementing in Lua and trying the
	"QuickLuaTour" script code in an IDE
]]



--[[ This is a multiline-comment.
The comment goes beyond one line
	to this point where the two brackets are.]]
print 'Hello World I am actually working now'
print ("This is interesting \n")

-- Variables hold values which have types, variables don't have types
a = 1
b = "abc"
c={}
d= print

print('type(a):', type(a))
print('type(b):', type(b))
print('type(c):', type(c))
print('type(d):', type(d))
d()


-- Variable names consist of letters, digits and underscores
-- They cannot start with a digit.

one_two_3 = 123 -- is a valid variable name
-- 1_two_3 is not a valid variable name

-- The underscore is typically used to start special values
-- like _VERSION in Lua
print(_VERSION)
-- So don't use variables that start with _,
-- but a single underscore _ is often used as a dummy variable.


-- Lua is Case Sensitive so all variable names & keywords
-- must be in correct case.
ab=1
Ab=2
AB=3
print(ab, Ab, AB)
print()


--Keywords. Lua reserved words are: and, break, do, else, elseif,
-- 		end, false, for, function, if, in, local, nil, not, or,
--		repeat, return, then, true, until, while.
-- Keywords cannot be used for variable names,
-- 'and' is a keyword, but AND is not, so it is a legal variable name.
AND=3
print(AND)


--Strings
a="single 'quoted' string and double \"quoted\" string inside"
b='single \'quoted\' string and double "quoted" string inside'
c=[[ multiple line
with 'single'
and "double" quoted strings inside.]]
print(a)
print(b)
print(c)
print()


--Assignments
-- Multiple Assignments are valid.
-- var1,var2=var3,var4
a,b,c,d,e = 1, 2, "three", "four", 5
print(a,b,c,d,e)
print()

-- Multiple assignments allows one line to swap two variables.
print("Swaping...")
print(a,b)
a,b = b,a
print(a,b)
print()


-- Numbers
-- Multiple assignment showing different number formats.
-- Two dots (..) are used to concatenate strings (or a string and a number).
a,b,c,d,e = 1, 1.123, 1E9, -123, .0008
print("a="..a, "b="..b, "c="..c, "d="..d, "e="..e)
print()

-- More Output.
-- More writing output.
print("Hello from Lua!")
print "Hello from Lua!"
print ""

-- io.write writes to stdout but without new line.
io.write("Hello from Lua!")
io.write("Hellow from Lua!")
-- Use an empty print to write a single new line
print('\n')


-- Tables
-- Simple table creation
a={} -- {} creates an empty table
b={1,2,3} -- creates a table containing numbers 1,2,3
c={"a", "b", "c"} --c creates a table containing strings a,b,c
print(a,b,c) -- tables don't print directly, we'll get back to this!!
print()

-- More Tables
-- Associate index style.
address={} -- empty address
address.Street="Wyman Street"
address.StreetNumber=360
address.AptNumber="2a"
address.City="Watertown"
address.State="Vermont"
address.Country="USA"

print(address.StreetNumber, address["AptNumber"])
print()


-- If statements
-- Simple if.
a=1
if a==1 then
	print ("a is one")
end
print()

-- if else statement
b="happy"
if b=="sad" then
	print("b is sad")
else
	print("b is not sad")
end
print()

--if elseif else statement
c=3
if c==1 then
	print("c is 1")
elseif c==2 then
	print("c is 2")
else
	print("c isn't 1 or 2, c is "..tostring(c))
end
print()


-- Conditional Assignment
-- value = test and x or y
a=1
b=(a==1) and "one" or "not one"
print(b)

-- is equivalent to
a=1
if a==1 then
	b="one"
else
	b="not one"
end
print(b)
print()


-- while statement.
a=1
while a~=5 do -- Lua uses ~= to mean not equal
	a=a+1
	io.write(a.." ")
end
print()


--repeat until statement.
a=0
repeat
	a=a+1
	print(a)
until a==5
print()


-- For statement
-- Numeric iteration form.

-- Count from 1 to 4 by 1.
for a=1, 4 do io.write(a) end
print()

-- Count from 1 to 6 by 3.
for a=1,6,3 do io.write(a) end
print('\n')

-- more For statement
-- sequential iteration form.
for key,value in pairs({1,2,3,4}) do print(key, value) end
print()


-- Printing tables.
--Simple way to print tables.
a={1,2,3,4,"five","elephant","mouse"}
for i,v in pairs(a) do print(i,v) end
print()


-- break statement.
-- break is used to exit a loop
a=0
while true do
	a=a+1
	if a==10 then
		break
	end
end
print("reached", a)
print()


-- functions
-- define a function without parameters or return value.
function myFirstLuaFunction()
	print("My first lua function was called")
end

-- Call myFirstLuaFunction
myFirstLuaFunction()
print()


-- More Functions.
--Define a function with a return value.
function mySecondLuaFunction()
	return "string from my second function"
end

-- Call function returning a value.
a=mySecondLuaFunction("string")
print(a)
print()

-- Define function with multiple parameters and multiple return values.
function myFirstLuaFunctionWithMultipleReturnValues(a,b,c)
	return a,b,c,"My first lua function with multiple return values", 1, true
end

a,b,c,d,e,f = myFirstLuaFunctionWithMultipleReturnValues(1,2,"three")
print(a,b,c,d,e,f)
print()


-- Variable scoping and functions.
-- All variables are global in scope  by default.
b="global"

-- To make local variables you must put the keyword 'local' in front
function myfunc()
	local b=" local variable"
	a="global variable"
	print(a,b)
end

myfunc()
print(a,b)
print()


-- Formatted printing.
-- An implementation of printf.
function printf(fmt, ...)
	io.write(string.format(fmt, ...))
end

printf("Hello %s from %s on %s\n",
		os.getenv"USER" or "there", _VERSION, os.date())
print()


--[[
Standard Libraries

	Lua has standard built-in libraires for common operations in
	math, string, table, input/output & operating system facililties.

External Libraries

	Numerous other libraries have been created: sockets, XML, profiling,
	logging, unittests, GUI toolkits, web frameworks, and many more.

]]


-- Standard Libraries - math.
--Math functions:
-- math.abs, math.acos, math.asin, math.atan, math.atan2,
-- math.ceil, math.cos, math.cosh, math.deg, math.exp, math.floor,
-- math.fmod, math.frexp, math.huge, math.ldexp, math.log, math.log10,
-- math.max, math.min, math.modf, math.pi, math.pow, math.rad,
-- math.random, math.randomseed, math.sin, math.sinh, math.sqrt,
-- math.tan, math.tanh
print(math.sqrt(9), math.pi)
print()


-- Standard Libraries - string.
--String functions:
-- string.byte, string.char, string.dump, string.find, string.format,
-- string.gfind, string.gsub, string.len, string.lower, string.match,
-- string.rep, string.reverse, string.sub, string.upper
print(string.upper("lower"),string.rep("a",5), string.find("abcde", "cd"))
print()


-- Standard Libraries - table.
--Table Functions:
-- table.concat, table.insert, table.maxn, table.remove, table.sort

a={2}
table.insert(a,3);
table.insert(a,4);
table.sort(a,function(v1,v2) return v1 > v2 end)
for i,v in ipairs(a) do print(i,v) end
print()


-- Standard Libraries - input/output
--IO Functions:
-- io.close, io.flush, io.input, io.lines, io.open, io.output, io.popen,
-- io.read, io.stderr, io.stdin, io.stdout, io.tmpfile, io.type, io.write,
-- file:close, file:flush, file:lines, file:read,
-- file:seek, file:setvbuf, file:write

	print(io.open("file doesn't exist", "r"))
print()


-- Standard Libraries -operating system facilities.
--OS functions:
-- os.clock, os.date, os.difftime, os.execute, os.exit, os.getenv,
-- os.remove, os.rename, os.setlocale, os.time, os.tmpname

print(os.date())
print()




-- External Libraries.
-- Lua has support for external modules using the 'require' function
-- INFO: A dialog will popup but it could get hidden  behind the console.
require( "iuplua" )
ml = iup.multiline
	{
	expand="YES",
	value="Quit this multiiline edit app to continue Tutorial!",
	border="YES"
	}
dlg = iup.dialog{ml; title="IupMultiline", size="QUARTERxQUARTER",}
dlg:show() --
print("Exit GUI app to continue!")
--iup.MainLoop()  --[[ ****IMPORTANT: In SciTE this block of code does not bring up a dialog, and will deadlock the program.****]]
print()


--[[

 To learn more about Lua scripting see

 Lua Tutorials: http://lua-users.org/wiki/TutorialDirecotry

 "programming in Lua" Book: http://www.inf.puc-rio.br/~roberto/pil2/

 Lua 5.1 Reference Manual:
	Start/Programs/Lua/Documentation/Lua 5.1 Reference Manual

 Examples: Start/Programs/Lua/Examples

]]



return
