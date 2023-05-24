# Setting up your environment
1. Download GoDot 4.0 https://godotengine.org/download/windows/, https://godotengine.org/download/macos/
2. Download Git and set it up. If you don't have that: https://kbroman.org/github_tutorial/pages/first_time.html
3. In your git terminal go to a folder where you want it to be set up and point it to this repo. With "git clone https://github.com/MelodicCanvas/legendary-octo-journey.git"
4. Open GoDot and go to import then find the project.godot file and open it. 
---
# Pushing code
1. Point your git to this with git remote add https://github.com/MelodicCanvas/legendary-octo-journey.git
2. Run ```git checkout -b branch-name```
3. Do your changes
4. Push them
5. Request a Pull Request
---
# How to commit code
1. In your git command line after navigating to your folder, type ```git add .```, this will add all changes.
2. Next type git commit -m "brief description of the changes made in the commit", try to do this for every "section" of code your write as it will make maintaining and pr's easier
3. Repeat 1 and 2 until completed
4. Then type ```git push```
---
# Spritesheet

![Spritesheet](/Assets/Player/Basic%20Charakter%20Spritesheet.png)
\
(/Assets/Player/Basic%20Charakter%20Spritesheet.png) \
Create your sprite sheets to follow the above format. \
Please avoid creating them in the following manner: \
![Invalid Spritesheet](/Assets/Player/Asset%20Pack-V3/Player%20Sword%20Idle/Player%20Sword%20Idle%2048x48.png)
\
(/Assets/Player/Asset%20Pack-V3/Player%20Sword%20Idle/Player%20Sword%20Idle%2048x48.png)
---
The big difference is working with 1 big sprite sheet vs mini sprite sheets. GoDot with 1 sprite sheet lets me put all the animation on a single node, and use frames to calculate the animations.\
(Frames being each character action)
---
# Music
The only thing to keep in mind for the music is that it need to be in .ogg format not .mp3\
The reason is that .ogg format is supported by the AudioStreamPlayer, .mp3 is as well but along with being defaulted, .ogg is a smaller size which leads to smaller game files and easier upload and downloads.\
Along with this, .ogg files are also generally considered to have better sound quality than .mp3 files at the same bitrate.
---
# Commit Messages
Try to do commit messages in past tense and make them comprehensive.\
Instead of "Will add things" say "Added character sprite sheet for idle animation"\
That way if something goes wrong, we can revert easily and see what happened\ 
Try to do mini commits if possible, since we're just starting most of our commits are going to be big. This again relates back to being able to revert and see where we went wrong.\
---
# Code
Since I started the project I'm going to be coding in my own style with my own styling.\
For example functions should take on PascalCase. 
```
void PascalCase() {
  return;
}
```
\
And then variables should take on camelCase
```
var movementSpeed = 100;
```
\
Code should be understandable without knowing to much of the logic underneath EX: \
INCORRECT
```
[X] 
public class BadCodeExample {
    public static void main(String[] args) {
        int r = 5; // "r" is not a descriptive variable name
        double a = calculateArea(r); // Single-letter variable name "a" is unclear
        double c = calcCircumference(r); // Single-letter variable name "c" is unclear

        System.out.println("Circle radius: " + r);
        System.out.println("Circle area: " + a);
        System.out.println("Circle circumference: " + c);
    }

    public static double calculateArea(int r) {
        return 3.14 * r * r; // Magic number 3.14 without explanation
    }

    public static double calcCircumference(int r) {
        return 2 * 3.14 * r; // Magic number 3.14 without explanation
    }
}
```
CORRECT
```
[✔] 
public class Circle {
    private double radius;

    public Circle(double radius) {
        this.radius = radius;
    }

    public double calculateArea() {
        return Math.PI * radius * radius; // Declared Number with no question where it came from
    }

    public double calculateCircumference() {
        return 2 * Math.PI * radius; // Ditto
    }

    public void printCircleInfo() {
        System.out.println("Circle with radius " + getRadius());
        System.out.println("Area: " + calculateArea());
        System.out.println("Circumference: " + calculateCircumference());
    }

    public static void main(String[] args) {
        Circle circle = new Circle(5.0);
        circle.printCircleInfo();
    }

    public double getRadius() {
        return radius;
    }
}

```
# Follow these conventions:
1. Descriptive and meaningful names: Use clear and expressive names for variables, functions, classes, and methods that reflect their purpose and intent.
2. Single Responsibility Principle (SRP): Aim for classes and methods that have a single responsibility and do one thing well. As in functions that do one thing, and do it well.
3. Don't Repeat Yourself (DRY): Avoid code duplication by extracting common functionality into reusable functions, classes, or modules. Do not rewrite code that is already in a function. If you see you're repeating code turn it into a function
4. Keep functions and methods small: Aim for small, focused functions and methods that are easier to understand, test, and maintain.
5. Meaningful comments and documentation: Use comments sparingly and only when necessary to explain complex logic or non-obvious parts of the code. Prioritize writing self-explanatory code and clear naming over excessive comments.
6. Consistent formatting and style: Follow a consistent coding style throughout the codebase to improve readability and maintainability.
7. Error handling and exception management: Implement proper error handling and use exceptions to handle exceptional cases rather than relying on error codes or error flags.
8.There are 3 more but I won't cover it because it's semi-irrelevant\
Any more conventions you can just follow the codebase or if you want to do your own styling just tell me and we can talk about it.
---
Future organization things
- [ ] Force pull requests to merge into master
- [ ] Use branches to ensure stable branch
---
If you've never done a git workflow here's a quick tutorial: https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow
---
# Submitting bugs/features
1. Head to the "Issues tab"
2. Select "New Issue"
3. Give it a title of what you want to submit
4. Leave a good description of the requirements
5. Add the correct label from the right hand panel
6. Submit
---
# Code Reviews
1. Understandability: Is the code easy to understand? Does it include comments where necessary to explain complex or non-obvious parts?\
2. Functionality: Does the code do what it's supposed to do? Does it handle edge cases and potential errors?\
3. Consistency: Does the code follow the established coding conventions and style guidelines? Is it consistent with the rest of the codebase?\
4. Efficiency: Could the code be made more efficient or performant? Are there any unnecessary computations or data structures?\
5. Modularity: Is the code well-structured and modular? Are functions and classes small, focused, and do they adhere to the Single Responsibility Principle?\
---
# Communication
Discord!
---
