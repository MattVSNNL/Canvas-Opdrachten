// Variables
int gameEndTime = 0;
int resetDelay = 2 * 1000; // x1000 because delaying is miliseconds

boolean debounce = false;
boolean gameStarted = false;
boolean clickedDebounce = false;
boolean waitingForReset = false;

String player1Shapie = "";
String player2Shapie = "";
int currentPlayersTurn = 1;

// Startup
void setup() {
  // Setup
  size(600, 600);
  loadEnviorment();

  // music.play(); // Apparently looping it plays the music automatically
  // birds.play();
}

// Draw
void draw() {
  background(bg);
  loadParticles();
  GenerateGrid();

  status.display();
  playButton.display();

  if (gameStarted) {
    runGame();
  }

  if (waitingForReset && millis() - gameEndTime >= resetDelay){
    resetGame();
  }
}

void runGame() {
  gameStarted = true;

  playButton.hide();

  if (player1Shapie.isEmpty() && player2Shapie.isEmpty()) {
    if (random(1) < 0.5) {
      player1Shapie = "X";
      player2Shapie = "O";
    } else {
      player1Shapie = "O";
      player2Shapie = "X";
    }

    println(player1Shapie);
    println(player2Shapie);
  }
  println("Game Started!");
  println(currentPlayersTurn);

  if (currentPlayersTurn == 1) {
    status.update("Player1's turn");
  } else {
    status.update("Player2's turn");
  }

  if (clickedDebounce) {

    int winner = checkWinner();

    if (winner != 0) {
      if (winner == getShapie(player1Shapie)) {
        status.update("Player1 Wins!");
      } else {
        status.update("Player2 Wins!");
      }
      gameStarted = false;
      gameEndTime = millis();
      waitingForReset = true;
      clickedDebounce = false;
      return;
    }

    if (currentPlayersTurn == 1) {
      currentPlayersTurn = 2;
    } else {
      currentPlayersTurn = 1;
    }

    clickedDebounce = false;
  }
}

void resetGame() {
    ResetBlocks();
    player1Shapie = "";
    player2Shapie = "";

    currentPlayersTurn = 1;

    status.update("Press Play");
    playButton.show();

    waitingForReset = false;
}

int checkWinner() {
  for (int[] combo : winCombinations) {

    int a = combo[0];
    int b = combo[1];
    int c = combo[2];

    if (Blocks[a] != 0 && Blocks[a] == Blocks[b] && Blocks[a] == Blocks[c]) {
      return Blocks[a];
    }
  }

  return 0;
}