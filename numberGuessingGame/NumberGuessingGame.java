import java.util.Scanner;

public class NumberGuessingGame {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        int low = 1;
        int high = 1000;
        int attempts = 1;
        boolean guessedCorrectly = false;

        System.out.println("Think of a number between " + low + " and " + high + ".");
        System.out.println(
                "I will try to guess it. Respond with : 'h' if my guess is high, 'l' if it's low, or 'c' if it's correct.");
        System.out.println("Press Enter when you're ready : ");

        scanner.nextLine();

        while (low <= high) {
            int guess = low + (high - low) / 2;

            System.out.println("Attempt #" + attempts + " : Is your number " + guess + "?");
            System.out.print("Enter your response (h/l/c) : ");

            char userChoice = scanner.next().charAt(0);

            if (userChoice == 'c') {
                System.out.println("Yay! I guessed your number in " + attempts + " attempts.");
                guessedCorrectly = true;
                break;
            } else if (userChoice == 'h') {
                low = guess - 1;
            } else if (userChoice == 'l') {
                high = guess + 1;
            } else {
                System.out.println("Invalid input. Please enter 'h', 'l', or 'c'.");
                attempts--;
            }

            attempts++;
        }

        if (!guessedCorrectly) {
            System.out.println("Something went wrong. Are you sure you provided correct feedback?");
        }

        scanner.close();
    }
}
