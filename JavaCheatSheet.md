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
We can add an item to the list using the **.add()** function. We can retrive a value from the list using the **.get(i)** where i is a specific position in the list. We can get the size of the list using the **.size()** function. We can remove a value from the list using the **.remove(i)** where i is a specific position in the list. We can check the existence of a value in a list using the **.contains(value)** where value is the item we are searching for: this function returns true or false. We can clear a list by using the **.clear()** function.       
When retrieving information from a place that does not exist in the list, you recieve a IndexOutOfBoundsException. 
ArrayLists can also be used as a parameter for a method and can be returned from a method.  

An Array contains a limited amount of indices for values. The values in an Array are called elements. There are two ways to create an array: **int[] numbers = new int[3];** which creates an array of size 3 or by **int[] numbers = {5, 1, 3, 4, 2};** where we assign the elements in the array upon creation. With the first method, we have to access each element in the array by its index to change its value. For example, **numbers[0] = 5;** sets element at index 0 to 5.  
We can get the size of an array using the **.length** function. It is not a method call like the **.size()** function.  
If the index is pointing outside the array we recieve an ArrayIndexOutOfBoundsException error.  
Like ArrayLists, Arrays can also be used as a parameter for a method and can be returned from a method.  

We can split a string using the **.split(",");** function. The character in the string denotes where we split the string, in this case it is at the commas. The split method returns an array of the resulting sub-parts.   
We can convert all letters of a string to lowercase using the **.toLowerCase()** method. We can remove spaces from beginning and end of the string using the **.trim()** method.
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
When programming, we usually have a seperate class or interface for the user to interact with instead of having all the code in main. We try to separate the program into several sub-problems and work on only one sub-problem at a time. We also aim to write as clean code as possible which includes: indenting code, use descriptive method and variable names, don't make your methods too long (not even the main method), do only one thing inside one method and remove all copy-paste code. Following these steps makes it easier to read and edit programs when working in teams and adds to maintenance of the program.    

Errors occur in the programs we write. Finding errors as a programs complexity grows makes it more challenging to do so. When an error occurs in a program, it typically prints a stack trace which is the list of methods that resulted in the error.  

Checklist for troubleshooting: indent your code properly and find out if there are any missing parentheses, verify that the variables used are correctly named, test the program flow with different inputs and find out the sort of input that causes the program to not work as desired (If you received an error in the tests, the tests may also indicate the input used), add print commands to the program in which you print out the values of the variables used at various stages of the program's execution and verify that all variables you are using are initialized (If they aren't, a NullPointerException error will occur).  

We can automatically pass input to be read by a Scanner object. For example, the following scans through the string below, instead of asking for user input:   
**String input = "one\n" + "two\n" + "three\n" + "four\n";**   
**Scanner reader = new Scanner(input);**  
The \n refers to a line break, signifying the next line of the scanner.  
Java's **System.nanoTime()** method returns the time of the computer in nanoseconds. 

Unit testing refers to testing individual components in the source code, such as classes and their methods. The more responsibility a method has, the more complex the test is. If a large application is written in a single method, testing can be very challenging.  
To test a class we create a test class and import the following:  
**import static org.junit.Assert.assertEquals;**  
**import org.junit.Test;**  
We start off by creating a test method, for example to confirm that a newly created car object   always has an intial value of 0 passengers. We can do this by using the assertEquals function, for example: **assertEquals(0, car.getPassengers())**. Each test method should have an annotation of **@Test** at the top of the method which tells the JUnit framework that it is an executable test method. We can run the tests in the testing section in VSCode.    

Test-driven software development consists of 5 steps: write a test, run the tests and check if the tests pass (if the test passes, the test is most likely erroneous and should be corrected - the test should only test functionality that hasn't yet been implemented), write the functionality that meets the test's requirements, perform the tests (If the tests fail, there is likely to be an error in the functionality written), repair the internal structure of the program.
<br/> <br/> <br/>

# **Part 7 Summary**
A programming paradigm is a way of thinking about and structuring a program's functionality.   
Object-orientated programming involves information being represented as classes that describe the concepts of the problem and logic of the application. They define methods and objects are instantiated during program execution. It makes programs easier to understand.   
Procedural programming is where the structure of the program is formed by the functionality desired for the program. The program is executed one step at a time. The state of the program is maintained in variables and tables.  

Methods without the static modifier are instance methods whereas methods with the static modifier are class methods. Instance methods are methods that are associated with an object and can process the objects variables and call its other methods. Class methods can only access the variables given as parameters or that they create themselves.   

An Array can be sorted using the **.sort(array);** method. Lists can be sorted using **Collections.sort(list);**  

A linear search is a search algorithm which searches information in an array by going through every value one by one. Wehn the value is found its index is immediately returned. In the worst case scenario, the algorithm has to do as many comparisons as there are values in the array. In an array containing 10 million values, this means 10 million comparisons.  
A binary search is a search where you look for the value in the middle index of the array/list and compare the value found there to the searched value, and if the value isn't found there it will eliminate half of the search area. Then will repeat on the higher/lower part of the list.
<br/> <br/> <br/>

# **Part 8 Summary**
A HashMap is used whenever data is stored as key-value pairs, where values can be added, retrieved and deleted using keys.  
Each key refers to some value. If the hash map does not contain the key used for the search, its get method returns a null reference. A hashmap has at most one value per key. If we want to assign multiple values to a key, we can use a list as values in a hash map.  
Using a HashMap requires importing the following statement: **import java.util.HashMap;**  
Two type parameters are needed when creating a hash map, the type of the key and the value. For example: **HashMap<String, Integer> hashmap = new HashMap<>();**  
We can enter into the HashMap using the **.put(key, value)** method. We can get a value from the HashMap using the **.get(key)** method which returns a value.  
The hash map has a maximum of one value per key. If a new key-value pair is added to the hash map, but the key has already been associated with some other value stored in the hash map, the old value will vanish from the hash map.   
A hashmap generates a hash value from the key, which is used to store the value of a specific location.  
We can check if a hash map contains a key using the **.containsKey()** method which returns true or false. We can get a list of keys returned by the **.keySet()** method. We can get a list of values returned by the **.values()** method.  
A hash map only expects reference variables to be added to it like an array list. Int, double and char are primitive variables but Integer, Double, Character are reference variables.  
The **.getOrDefault(key, 0)** method of the HashMap searches for the key passed into it as a parameter. If the key is not found, it returns the value of the second parameter passed into it.  

For a hashmap we need to define: the equals method so that all equal or approximately equal objects cause the comparison to return true and all false for all the rest and the hashCode method so that as few objects as possible end up with the same hash value.  
The hashCode method can also be used for approximate comparison of objects. It can be implemented as follows:
**public int hashCode() {**  
....**if (this.name == null) {**  
........**return this.published;**  
....**}**  
....**return this.name.hashCode();**  
**}**
<br/> <br/> <br/>

# **Part 9 Summary**
We use the keyword extends to inherit properties of a class. The class that recieves the properties is called a subclass, and the class whose properties are inherited is called the superclass. For example: **public class Engine extends Part** means the engine class inherits from the part class. If an object owns or is composed of other objects, inheritance should not be used.  
In the constructor of a subclass we can call the method **super();** which calls the constructor in the superclass. You can call the methods defined in the superclass by prefixing the call with super. For example: **super.toString();**  

If a method or variable has the access modifier **private**, it is visible only to the internal methods of that class. Subclasses will not see it and has no direct means to access it. A subclass sees everything that is defined with the **public** modifier in the superclass. If we want to define some variables or methods that are visible to the subclasses but invisible to everything else, we can use the access modifier **protected** to achieve this.  

An abstract class combines interfaces and inheritance. You cannot create an instance of them. You can define abstract methods but implementing them is the responsibility of the subclasses. 

We can use interfaces to define behaviour required from a class. They are defined like: **public interface interfaceName**. They define methods by their names and return types, but do not explain what the method does. In order to do something with the method we override it in the subclass. The subclass **MUST** contain an implementation of any methods in the interface.  
For example in the interface: **public String read();**   
Then in the subclass we could have: 

**@Override**  
**public String read() {**  
....**return "Hello";**  
**}**  

Java has 4 commonly used interfaces which are list, map, set and collection.  
The list interface defines the basic functionality related to lists. One example is a linked list which constructs a list where each element contains a reference to the next element in the list. When one searches for an object by index in a linked list, one has to go though the list from the beginning until the index.  
The map interface defines the basic behavior associated with hash tables.  
The set interface describes functionality related to sets. In Java, sets always contain either 0 or 1 amounts of any given object.  
The Collection interface describes functionality related to collections. Lists and sets are categorized as collections in Java — both the List and Set interfaces implement the Collection interface. The Collection interface provides methods for checking the existence of an item (the method contains) and determining the size of a collection (the method size).
<br/> <br/> <br/>

# **Part 10 Summary**
A stream can be formed from any object that implements the Collection interface using the **.stream()** method. We can map string values to Integers using stream's **.mapToInt(value -> conversion)** method. We can use the **.filter(value -> filter conditon)** method to filter out items we want. We have other methods such as the **.average()**, **.sorted()** and the **.count()** methods. For example, calculating the average of some inputs:  

**double average = inputs.stream()**  
**____.mapToInt(s -> Integer.valueOf(s))**  
**____.average()**  
**____.getAsDouble();**  

We can create a new ArrayList using **.collect(Collectors.toCollection(ArrayList::new));** method.  
There are 4 terminal operations: count for amount of values in a list, the forEach method for going a through list values, the collect method for gathering the list values ​​into a data structure, and the reduce method for combining the list items. The reduce method can be used in the following format: **reduce(initialState, (previous, object) -> actions on the object)**. For example: **.reduce(0, (previousSum, value) -> previousSum + value)** adds each value in a list together into one sum. The line **.reduce("", (previousString, word) -> previousString + word + "\n")** reduces a list of strings into one string.   
Intermediate stream operations are methods that return a stream. Streams are very useful when handling objects and files. For example, with files we can use **Files.lines(Paths.get("file.txt")).forEach(row -> rows.add(row));**  

The Comparable interface defines the compareTo method used to compare objects. If a class implements the Comparable interface objects created from that class can be sorted using Java's sorting algorithms. A class can implement several interfaces. We can implement a comparable interface by: **public class Member implements Comparable< Member >**   
The compareTo method returns an integer that informs us of the order of comparison. We return 0 if the same, -1 if less than and 1 if greater than. We can permenantly sort items using: **Collections.sort(list);**  
The Comparator class provides two essential methods for sorting: comparing and thenComparing. The comparing method is passed the value to be compared first, and the thenComparing method is the next value to be compared.  

StringBuilder is a way to concatenate strings without the need to create them. A new StringBuilder is created with a **new StringBuilder()**, and content is added to the object using the overloaded **.append()** method. Using StringBuilder is more efficient than creating strings with the + operator.  

A regular expression defines a set of strings in a compact form and is used to verify the correctness of strings.  
A vertical line (|) indicates that parts of a regular expressions are optional. For example, 00|111|0000 defines the strings 00, 111 and 0000. We can check if a string matches this using: **string.matches(regEx)**. The string must be exactly one of the three.  
We can use parentheses to determine which part of a regular expression is affected by the rules inside the parentheses. For example, the regular expression 00000|00001 can instead be represented as 0000(0|1).  
Quantifiers are used if a certain pattern repeats. The * quantifier repeats 0 to infity times so it does not have to appear. The + quantifier repeats 1 to infinity times so it must appear at least once. The ? quantifier repeats 0 or 1 times. The quantifier {a} will repeat a times, for example (10){2} is checking for 1010. The quantifier {a,} repeats a to infinity times so it must appear at least a times. The quantifier {a, b} repeats whatever is in a b amount of times, for example {21, 3} is checking for 212121.  
A character class can be used to specify a set of characters in a compact way. Characters are enclosed in square brackets, and a range is indicated with a dash. For example, [145] means (1|4|5) and [2-36-9] means (2|3|6|7|8|9). 

If we know the possible values ​​of a variable in advance, we can use a class of type enum to represent the values. For example, we can define a Suit enum like:  

**public enum Suit {**  
**....DIAMOND, SPADE, CLUB, HEART**  
**}**  

We can call in the constructor by **Card first = new Card(Suit.HEART);**  
We can compare two enums with equal signs. Each enum field gets its own unique number code. We can find the numerical identifier of an enum field using **.ordinal()**.  
Enum type classes cannot have a public constructor. They can have a private constructor. 

ArrayList and other "object containers" that implement the Collection interface implement the Iterable interface, and they can also be iterated over with the help of an iterator - an object specifically designed to go through a particular type of object collection. We can create a new iterator and use it by:

**Iterator< Card > iterator = cards.iterator();**  
**....while (iterator.hasNext()) {**  
**........System.out.println(iterator.next());**  
**....}**
<br/> <br/> <br/>

# **Part 11 Summary**
A class diagram is a diagram used in designing and modeling software to describe classes and their relationships. In a class diagram, a class is represented by a rectangle with the name of the class written on top. A line below the name of the class divides the name from the list of attributes (names and types of the class variables). The attributes are written one attribute per line. A + before the attribute name means the attribute is public, and a - means the attribute is private. In a class diagram, class attributes are written "attributeName: attributeType". In a class diagram, we list the constructor (and all other methods) below the attributes. We list all class methods including the constructors; constructors are listed first and then all class methods. We also write the return type of a method in the class diagram. For example, **+setAge(initialAge: int):void**.  

In a class diagram, the connections between classes are shown as arrows. The arrows also show the direction of the connection. If an class contains a list of another class's objects, we can represent this by adding a star to the end of the arrow. If there is no arrowhead in a connection but a straight line between them, both classes know about each other. In a class diagram inheritance is described by an arrow with a triangle head with a hollow head. The triangle points to the class being inherited from. With abstract classes we must add << abstract >> above the name of the class. Interfaces are written << interface >> above the name of the class. Implementing an interface is shown as a dashed arrow with a triangle arrowhead.

It is difficult to remember functionality and methods as number of classes implemented for the program grows so we use packages. The package of a class (the package in which the class is stored) is noted at the beginning of the source code file with the statement **package *name-of-package*;** means the class is in the package library. The package definition **package library.domain** is used to refer to the storage space of the classes that represent concepts of the problem domain. A class can access classes inside a package by using the import statement, for example **import library.domain.Book;**  
If the access modifier is missing, methods and variables are only visible inside the same package.  
Application logic is typically kept seperate from the classes that represents the contents of the problem domain. 

When handling exceptions, we can use a **try{} catch (exception e) {}** block structure to handle exceptions. The code within the catch block is executed only if an exception is thrown. The throw command throws an exception. One exception that the user does not have to prepare for is IllegalArgumentException. The IllegalArgumentException tells the user that the values given to a method or a constructor as parameters are wrong. For example, if we only want a parameter between 0 and 5 we could write: **throw new IllegalArgumentException("Grade must be between 0 and 5.");**  

The PrintWriter class offers the functionality to write to files. The constructor of the PrintWriter class receives as its parameter a string that represents the location of the target file. For example, **PrintWriter writer = new PrintWriter("file.txt");** creates a new PrintWriter. We can then use **writer.println("Hello");** to write text to the file. After writng to the file, we use **writer.close();** to close the file and ensures that the written text is saved to the file. 
<br/> <br/> <br/>

# **Part 12 Summary**
Generics relates to how classes that store objects can store objects of a freely chosen type. It can be written as: **public class Class<TypeParameter1, TypeParameter2, ...>**. Type parameters are usually defined with a single character. For example, **public class Locker< T >** indicates that the Locker class must contain a type parameter in its constructor. A significant portion of the Java data structures use type parameters such as an ArrayList which recieves one parameter or a HashMap which recieves two.

Java offers a ready-made Random class for creating random numbers. We can write, **Random rand = new Random();** to create an instance of the class. We can use the **.nextInt(a)** method which returns a random number between 0 and a-1. If we want to get a number between -30 and 50, we can create a random number between 0 and 80 and subtract 30. A Random object can also be used to create random doubles to be used for calculating probabilities. Computers simulate probabilities between 0 and 1. To do this we use the **.nextDouble()** method.

We can create multidimensional arrays, for example when dealing with coordinates. We can create a 2D array by: **int[][] twoDimensionalArray = new int[3][5];**  
We can iterate over a 2D array by using two nested for loops (a loop within a loop). 
<br/> <br/> <br/>

# **Part 13 Summary**
We can create a window using JavaFX by extending the Application class. This gives us a function to override start. To open the window we use the **.show()** method. To change the title of the application we use the **.setTitle()** method. To launch the method we write **launch(App.class)** in the main.  
A GUI consists of 3 essential parts: the stage object behaves as the program's window. A scene is set for a Scene object that represents a scene in the window. UI components are added as children to the object responsible for setting them. We can create a button and implement a button by: 

**Button button = new button();**   
**FlowPane layout = new FlowPane();**    
**layout.getChildren().add(button);**    
**Scene scene = new Scene(layout);**   
**window.setScene(view);**

To use JavaFX we have to import several ready-made libraries such as:  
**import javafx.scene.control.Label;** to import labels  
**import javafx.scene.control.Button;** to import buttons, etc.  

We can use labels in the same we we did for buttons. We can add multiple buttons/labels or other components at once. Other components can include a TextField.  
With a FlowPane, components are added side by side. We can change a FlowPane for a BorderPane which allows us to layout components in 5 different positions: top, bottom, centre, left and right. For example, **layout.setTop(button);**  
A HBox enables UI components to be set out in a horizontal row. We can use the **.setSpacing()** method to add space between the components. The VBox works very similarly except it sets components in a vertical column.  
A GridPane is used to layout UI components in a grid. We add an item to the grid by using the **.add(component, x, y)** method where component is the component to be added and x and y refer to the grid coordinates.  
We can have multiple layout components on a single interface, for example a HBox and a VBox. A typical setup involves using the BorderPlane layout as the base with other layouts inside it. We can add layouts to the BorderPane the same way we add components, for example: **layout.setTop(HBox);**  

Button presses are can be handled by implementing the EventHandler interface. We can represent that in the following two ways:  

**button.setOnAction(new EventHandler< ActionEvent >() {  
....public void handle(ActionEvent event) {  
....}  
}**

**button.setOnAction((event) -> {  
    System.out.println("Pressed!");  
});**

The event handler being used depends on what kind of user interface component we attach to it. If we want to listen to the changes made by the a text field for example, we could implement the ChangeListener interface. For example:  

**leftText.textProperty().addListener((change, oldValue, newValue) -> {
});**

When launching applications outside of the Application class. We can do this by using **Application.launch()** in the other class.  
We can have user interfaces with multiple views by creating multiple scene objects and transitioning between them.    
We can pad the sides of the application using the **.setPadding(new Insets(20, 20, 20, 20));** method. 
<br/> <br/> <br/>

# **Part 14 Summary**
Data visualization presents information in a concise form and can emphasise important points. Java offers lots of pre-made classes for drawing different types of charts including bar charts, area charts and line charts.   
Line charts can be used to illustrate change that happens over time. Data is illustrated as a line that connects dots in a 2D coordinate system. The x axis represents time and y axis represents value of the variable at each point in time. We start by creating both the y and x axis the chart is going to use, for example: 

**NumberAxis xAxis = new NumberAxis();  
NumberAxis yAxis = new NumberAxis();  
xAxis.setLabel("Year");  
yAxis.setLabel("Relative support (%)");**

Then we create the line chart by:  

**LineChart<Number, Number> lineChart = new LineChart<>(xAxis, yAxis);**

Then we create the data set to be entered into the chart: 

**XYChart.Series rkpData = new XYChart.Series();   
rkpData.setName("RKP");   
rkpData.getData().add(new XYChart.Data(1968, 5.6));   
rkpData.getData().add(new XYChart.Data(1972, 5.2));**   

Finally we add the data to line chart and display it:

**lineChart.getData().add(rkpData);   
Scene view = new Scene(lineChart, 640, 480);**

We can set the bounds of the axis by: **new NumberAxis(1968, 2008, 4);** which sets the xAxis between 1968 and 2008 and each line goes up by 4 ticks. To add each data point automatically we could store the points in a HashMap first then use names of parties as its keys.   

Bar charts are used to visualize catagorical data. We use CategoryAxis to define the x axis. We can use animation timer to visualize dynamic data. It is used to periodically retrieve and create new information for the application. 

We can draw using a Canvas object. We use a ColourPicker to choose a colour to draw with. We can add an event handler to the canvas to listen to mouse movements: 

**paintingCanvas.setOnMouseDragged((event) -> {  
....double xLocation = event.getX();  
....double yLocation = event.getY();  
....painter.setFill(colorPalette.getValue());    
....painter.fillOval(xLocation, yLocation, 4, 4);  
});**  

We can use the Image and ImageView classes to display images by passing the file name as an argument. We also have a lot of methods for image processing tasks such as setRotate, setScaleX and setScaleY. For example: 

**Image imageFile = new Image("file:humming.jpg");
ImageView image = new ImageView(imageFile);**

We can access the separate pixels of an image using a PixelReader object available from the Image class. PixelReader object can be used to go trough an image pixel by pixel, simultaneously writing a new image to a separate WritableImage object.

There are multiple ways to handle sound files. One if which uses AudioClip which is dependent on the JavaFX library: 

**AudioClip sound = new AudioClip("file:bell.wav");
sound.play();**
