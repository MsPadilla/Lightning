Lightning
=========

One way to [simulate lightning is with a random walk](https://docs.google.com/presentation/d/1FVMky4RCdS__va05BmkkpeWqi83gpj458w98yif5H6A/edit?usp=sharing). In this assignment you will create a program that uses a random walk to seemingly shoot lightning from one side of the screen to the other every time the mouse is pressed. You may find sides 22 to 58 of the [MathDotRandom](https://docs.google.com/presentation/d/1tEYZ90mLewRI-mGb6Hb46uVFLRiKi-nwknBmtxVP8do/edit?usp=sharing) slide presentation helpful.  

Suggested steps to start the assignment
------------------------------------------
1. Sign into your [GitHub account](https://github.com)
1. Then *fork* [this repository](https://github.com/ATC-APCSA/Lightning) 
2. Open the Lightning.pde file. Copy and paste the code into Processing.
3. At the top of the program in Processing, declare 4 `int` variables `startX`, `startY`, `endX` and `endY`. Initialize `startX` to 0, `startY` to 150, `endX` to 0 and `endY` to 150
3. `void setup()` needs to set the `size()`, `strokeWeight()` and `background()` of your program
4. `void draw()` needs to do two things:  
  -set the `stroke()`color of the lightning bolt to some random value using `Math.random()`   
  -a `while` loop that repeats the following until the `endX` is off the screen:    
    1. set `endX` to `startX` plus a random integer from 0 to 9  
    2. set `endY` to `startY` plus a random integer from -9 to 9  
    3. draw a `line()` with endpoints `startX`,`startY`,`endX`,`endY`    
    4. set `startX` equal to `endX` 
    5. set `startY` equal to `endY`
5. `void mousePressed()` needs to set `startX`,`startY`,`endX`,`endY` back to their original values. 
5. When you are happy with the program, copy and paste it back into GitHub
5. You will also need to modify `index.html` to customize your website with it's own title, headline and footer. When you are happy with your program, push your finished project up to GitHub
6. The final step is to submit the URL for your website to Canvas. You can find more specific instructions with pictures on how to submit your assignment on slides 20 to 24 of the [Processing GitHub Work Flow Presentation](https://docs.google.com/presentation/d/1FIV9P78JnVVpMvpW-TOuUO0uFG8pLYE3kHGJubOZXEE/edit?usp=sharing) slide presentation. Don't hesitate to ask for help if your aren't sure how something is suppose to work.  


Program requirements
-----------------------
The steps above are only a suggestion. Your program needs to use `Math.random()` for *all* random numbers in the assignment. Other than that, your lightning program doesn't have to work or look like any other. Have fun and be creative!

GitHub problems?
----------------
If your program works in Processing but not on GitHub, check [this list](https://github.com/APCSLowell/WebDebugging/blob/master/README.md#help-my-program-runs-in-processing-but-not-on-github) for possible solutions. If your program still isn't working on GitHub let your instructor know.

Samples of Student Work
-----------------------
[Ms. Padilla](https://mspadilla.github.io/Lightning/)
