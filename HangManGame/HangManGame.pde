String[] listOfWords = {"table", "guitar", "fork", "cup", "car", "sun", "leaf"};

boolean gameActive = false;
boolean gameWaiting = true;
char guess;
char[] result;
char[] guesses = new char[24];
int guessCounter = 0;
int wrongGuess = 0;
float wordChooser = random(listOfWords.length);
hangMan hangMan1 = new hangMan();
String gameWord = listOfWords[(int)wordChooser];

void setup() {
  size(800, 800);
  background(80, 240, 240);
  noStroke();
  textSize(24);
  fill(0, 250, 0);
  rect(height*0, height-height/4, width, height-height/4);
  fill(0);
  //text("Type your word (Press ENTER to submit).", 50, 50);
  drawNoose();
}

void draw() {
  fill(0);
  text("Press R to start the game", 50, 50);
  text("Guesses: "+guessCounter, 50, 500);
}

void keyPressed() {
  //Initial user input
  //if (inputActive == true) {
  //  if (key == ENTER) {
  //    inputActive = false;
  //    gameActive = true;
  //  }
  //  if (inputActive == true) {
  //    userInput += key;
  //  }
  //}
  if (gameWaiting == true) {
    if (key == 'r') {
      gameActive = true;
      result = new char[gameWord.length()];
      gameWord  = listOfWords[(int)wordChooser];
      text("A word has been chosen for you! The game is active!", 50, 700);
      text("To make a guess, press a letter and press ENTER", 50, 750);
    }
  }
  //Take guesses and check for match
  if (gameActive == true) {
    if (gameActive == true && key != ENTER && key != TAB) {
      guess = key;
    }
    if (key == ENTER) {
      guesses[guessCounter] = key;
      if (guesses[guessCounter] == gameWord.charAt(guessCounter)) {
        println("Correct!");
        result[guessCounter] = guess;
        guess = 0;
      } else if (guesses[guessCounter] != guess && gameActive == true) {
        wrongGuess++;
        println("Wrong!");
        if (wrongGuess == 0) {
          hangMan1.displayHead();
        }
        if (wrongGuess == 1) {
          hangMan1.displayBody();
        }
        if (wrongGuess == 2) {
          hangMan1.displayArms();
        }
        if (wrongGuess == 3) {
          hangMan1.displayLegs();
        }
        if (wrongGuess == 2){
          hangMan1.displayFace();
        }
          guessCounter++;
          int x = 700;
          int y = 150;
          int counter = 0;
          for (int i = 0; i < guessCounter+1; i++) {
            text(guesses[i], x+counter, y);
            counter += 10;
            if (counter == 40) {
              counter = 0;
              x = 700;
            }
          }
        }
      }
    }
}
