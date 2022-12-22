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
An ArrayList is a tool to store many values of the same type. We import this tool using **import.java.util.ArrayList**.   
We can create a new ArrayList with the command **ArrayList<> list = new ArrayList<>();** where we put the variable type in the first set of <>.   
Value type variables hold their actual values whereas reference type values contain a reference to the location that contains the values relating to that variable.  
We can add an item to the list using the **.add()** function. We can retrive a value from the list using the **.get(i)** where i is a specific position in the list. We can get the size of the list using the **.size()** function. We can remove a value from the list using the **.remove(i)** where i is a specific position in the list. We can check the existence of a value in a list using the **.contains(value)** where value is the item we are searching for: this function returns true or false.    
When retrieving information from a place that does not exist in the list, you recieve a IndexOutOfBoundsException. 
ArrayLists can also be used as a parameter for a method and can be returned from a method.  

An Array contains a limited amount of indices for values. The values in an Array are called elements. There are two ways to create an array: **int[] numbers = new int[3];** which creates an array of size 3 or by **int[] numbers = {5, 1, 3, 4, 2};** where we assign the elements in the array upon creation. With the first method, we have to access each element in the array by its index to change its value. For example, **numbers[0] = 5;** sets element at index 0 to 5.  
We can get the size of an array using the **.length** function. It is not a method call like the **.size()** function.  
If the index is pointing outside the array we recieve an ArrayIndexOutOfBoundsException error.  
Like ArrayLists, Arrays can also be used as a parameter for a method and can be returned from a method.  

We can split a string using the **.split(",");** function. The character in the string denotes where we split the string, in this case it is at the commas. The split method returns an array of the resulting sub-parts.  
Splitting strings is used particularly when data is of a fixed format such as csv (comma-seperated values).   
We can get a single character from the string using the **.charAt(i)** function where i is a specific index. We can get the length of a string using the **.length()** function. This should not be confused with the **.length** function which is used only to find the length of an array, whereas finds the length of a string.   
We can pause the program by using **Thread.sleep(100);**
<br/> <br/> <br/>

# **Part 4 Summary**
A class defines the attributes of objects. An object is instantiated by calling a method called the constructor which creates an instance of the class. A class specifies the objects methods and variables.   
Variables inside the class are called instance variables. Encapsulation is variables being private means they are hidden in the object. For example:  
  
**public class Person() {**  
....**private String name;**  
....**private int age;**  
**}**  
  
We can create a new instance of this class by: **Person ada = new Person("Ada");**  
A constructors name is the same as the class name. If the constructor is not defined, Java automatically creates a default one for it. An example of a constructor is:  
  
**public Person(String initialName) {**  
....**this.age = 0;**  
....**this.name = initialName;**  
**}**
    
Methods are written beneath the constructor. In classes we do not write static when creating methods. Methods are public.  
We access the variables in the class using **this.variableName**, for example **this.name = "Adam";**   
Methods which return an instance variable are called getters. Methods which set a value to an instance variable are called setters.   
We can create a method called **public String toString()** to return a string representation of the object.  
We can create an ArrayList of objects, for example **ArrayList < Person> people = new ArrayList<>();**  

Files are collections of data that live in computers. We can get the path to a file by: **Paths.get("file.txt")**. Then we can the scanner tool in conjuction with it:   
  
**try (Scanner scanner = new Scanner(Paths.get("file.txt"))) {**  
....**while(scanner.hasNextLine()) {**  
........**String row = scanner.nextLine();**  
....**}**  
**} catch (Exception e) {**  
....**System.out.println("Error: " + e.getMessage());**  
  
We could add the lines to an ArrayList or we could create a new instance of an object.
<br/> <br/> <br/>

# **Part 5 Summary**
Object orientated programming is about isolating concepts into their own entities. This is useful as certain details can be hidden inside the class and implementation of the class can be changed if desired. The great idea behind ​​object-oriented programming: a program is built from small and distinct objects that work together.  
An object refers to an independent entity that contains both instance variables and methods. A class defines the types of objects that can be created from it.  

Constructor overloading is where it is possible to have multiple constructors, one which takes in more/less parameters. We cannot have two constructors with the same parameters. For example, we can have the following constructors: **public Person(String name)** and **public Person(String name, int age)**. We can also overload methods in the same way.    
We can call another constructor from within another. For example, **this(name, 0);**.    

Variables are classifies into primitive and reference variables. A primitive variable's information is stored as value of that variable, whereas a reference variable's information holds a reference to information related to that variable. Reference variables are practically always objects in Java. When printing an object, we get something that looks like **Person@4aa298b7** as it prints the reference to variable. This is why we must define the **toString()** function.  
The difference between primitive and reference variables are that primitives are immutable and can be changed by arithmetic operations.  

Objects can be used as a parameter for a method and can be returned from a method.   
In order to compare two different objects, we must override the **equals()** method to a format which works and returns true or false. For example:   

**public boolean equals(Object compared) {**  
....**// if the variables are located in the same position, they are equal**  
....**if (this == compared) {**  
........**return true;**  
....**}**  
....**// if the type of the compared object is not SimpleDate, the objects are not equal**  
....**if (!(compared instanceof SimpleDate)) {**  
........**return false;**  
....**}**  
....**// convert the Object type compared object**  
....**// into a SimpleDate type object called comparedSimpleDate**  
....**SimpleDate comparedSimpleDate = (SimpleDate) compared;**  
....**// if the values of the object variables are the same, the objects are equal**  
....**if (this.day == comparedSimpleDate.day &&**  
........**this.month == comparedSimpleDate.month &&**  
........**this.year == comparedSimpleDate.year) {**  
........**return true;**  
....**}**  
....**// otherwise the objects are not equal**  
....**return false;**  
**}**
<br/> <br/> <br/>

# **Part 6 Summary**
