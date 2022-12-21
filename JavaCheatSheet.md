# **Java Cheat Sheet**
***This page is a summary of what I have learnt throughout the course.***  
<br/> 

# **Part 1 Summary**
// is a single line comment and is ignored by the computer when executing the program.  
Multi line comments can be opened with /* and closed by */. Everything between is interpreted as a comment.    
Using Control-K-C on selected text makes every line a single line comment. Comments are useful to clarify or add notes.  
All commands end with a semicolon to seperate them.

To print a string, we use **System.out.println();**  
Using print instead of println keeps the code on the same line.  
Writing sout and then pressing tab is a shortcut for printing.  

To read input from the user we import the Scanner tool using **import.java.util.Scanner;** at the top of the program.  
The tool itself can be created with **Scanner scanner = new Scanner(System.in)**;  
The command **String message = scanner.nextLine();** allows us to get input from user, which is returned as a String.  

A string enclosed in quotation marks is called a string literal (has a specified value).  
Concatenation is to join two strings together, for example: "Hello " + "world" prints "Hello world".  

The main variable types are: string (stores text), int (stores integers), double (stores decimal numbers) and boolean (stores true or false).  
No two variables can have the same name. A variable type is only stated when the variable is first declared.  
Declaring variable: **int value = 10**. To change value: **value = 5**.  
Once a variable type is declared it cannot be changed. For example a int cannot be assigned to a boolean. The only exception is assigning an integer to a double.  
Variable names cannot contain certain symbols or spaces. The convention in Java is to use a style called camelCase. A variable name cannot begin with a number.

We can convert a string to an integer/double/boolean. For example, **int value = Integer.valueOf(scanner.nextLine());**  
We can perform basic mathemetic operations using addition(+), subtraction(-), multiplication(*) and divison(/).  
When printing, if there is a string, any other operands will be converted to a string. Parentheses can stop this:  
**System.out.println((2 + 2));** gives us 4 whereas **System.out.println(2 + 2);** gives us 22.  
When dividing by two integers, it may provide an incorrect rounded result. To stop this we can convert the int to a double before: **double result = (double) a / b;**  
The average of numbers can be calculated by **1.0 * sum / count**.  

A conditional statement is when we branch the execution of a program based on a condition.  
An if statement is followed by parentheses where an expression is evaluated to be true or false, for example: **if(number > 10)**. If the number is 11, the expression is evaluated to be true.   
A code block refers to an enclosed pair of curly brackets. Code inside the block is indented 4 spaces (or 1 tab).  
We have a few comparison operators to use, they are: greater/less than(> or <), greater/less than or equal to (>= or <=) and equal or not equal to(== or !=).   
An else statement can be used in conjuction with an if statement to execute some code if the expression is evaluated to be false. The else command is placed on the same line as closing bracket of if command block.   
The else if command can be used if another condition may also be true which does not satisfy the if statement.  
We can use the modulo operator (%) to check the divisibility of a number. For example, **(number % 3 == 0)** compares remainder of number divided by 3 to 0.  
We cannot compare the equality of two strings using two equal signs. We use the equals command: **if(word1.equals(word2))**.   
An expression inside a conditional statement can consist of multiple parts, so we use and (&&), or (||) and not(!) to combine them.    
An expression consisting of two expressions combined using the and-operator is true, if and only if both of the combined expressions evaluate to true.  
An expression consisting of two expressions combined using the or-operator is true if either one, or both, of the combined expressions evaluate to true.   
Logical operators are not used for changing the boolean value from true to false, or false to true.
<br/> <br/> <br/>

# **Part 2 Summary** 
We use two different types of loops to repeat code: for loops and while loops. Every loop has an expression to determine if loop should be repeated.  
While loops take the form: **while(expression) {}**. If the expression is just true, it will infinitely loop unless we use the break command to exit the loop. When the execution reaches the end of the loop, the execution starts again top of loop. You can also return to beginning of loop using continue command.

A for loop is split into 4 parts: initalising a variable for counting number of executions, the loop conditon, changing the variable and the functionality to be executed. For example: **for(int i = 0; i < 10; i++)** will loop 10 times.      

A method is a named set consisting of statements that can be called elsewhere in the program by its name. For example, **public static void greet()** where greet is the name of our method. We can call this method by typing: **greet();**.   
When a program starts, the operating system calls main, which is the starting point for the program.  
Parameters are values given to a method that can be used in its execution. The values of the parameters are copied from the values given to the method when it is executed. For example, **public static void greet(int numberOfTimes)**.   
As a method is called the values of its parameters are copied. Therefore, both the main and method to be called can use variables with same name. However, changing variables inside the method does not affect the value of the variable inside main.  
If a method is void, it will not return a value. If you want a method to return something, void must be replaced with the type of the return variable. For example, we can change the previous method to **public static int greet()**.  
To return the value we must use the return command followed by the value/variable to be returned. The lines following the return command are never executed. For example, **return number;**  
Variables defined in a method can only be access within that method unless they are returned.   
The computer remembers where to return after the execution of the method using the call stack which contains frames. When a new method is called, a new frame containing its variables is created in the call stack. When execution ends it is removed from stack.
<br/> <br/> <br/>

# **Part 3 Summary**