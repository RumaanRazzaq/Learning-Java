// Introduces tool to read input
import java.util.Scanner;

public class Story {

    public static void main(String[] args) 
    {
        // Creation of tool called "scanner" to read user input 
        Scanner scanner = new Scanner(System.in);
        
        // Asks user to input a character's name
        System.out.println("I will tell you a story, but I need some information first.");
        System.out.println("What is the main character called?");

        // Reads user input and stores it as string "name" in program memory
        String name = scanner.nextLine();

        // Asks user to input character's job title
        System.out.println("What is their job?");

        // Reads user input and stores it as string "name" in program memory
        String job = scanner.nextLine();

        // Prints out the story using concatenation 
        System.out.println("Here is the story:");
        System.out.println("Once upon a time there was " + name + ", who was " + job + ".");
        System.out.println("On the way to work, " + name + " reflected on life.");
        System.out.println("Perhaps " + name + " will not be " + job + " forever.");
    }
}