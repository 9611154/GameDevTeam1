// InfoPanel Class to display game information
class InfoPanel {
  int score;
  int health;
  int lives;
  int level;
  float timer;
  
  InfoPanel(int initialScore, int initialHealth, int initialLives, int initialLevel) {
    score = initialScore;
    health = initialHealth;
    lives = initialLives;
    level = initialLevel;
    timer = 0;
  }
  
  // Call this function to update score
  void updateScore(int points) {
    score += points;
  }

  // Call this function to update health
  void updateHealth(int change) {
    health += change;
    health = constrain(health, 0, 100); // Health capped at 100
  }
  
  // Call this function to update lives
  void updateLives(int change) {
    lives += change;
  }
  
  // Call this function to increase level
  void nextLevel() {
    level += 1;
  }

  // Call this function to update the timer
  void updateTimer(float deltaTime) {
    timer += deltaTime;
  }

  // Display the panel with information
  void display() {
    // Draw background for info panel
    fill(50, 50, 50, 150); // Semi-transparent background
    rect(90, 10, 180, 100);
    
    // Set text properties
    fill(255);
    textSize(12);
    
    // Display the score
    text("Score: " + score, 100, 30);
    
    // Display the health
    text("Health: " + health, 100, 50);
    
    // Display the lives
    text("Lives: " + lives, 100, 70);
    
    // Display the level
    text("Level: " + level, 100, 90);
    
    // Display the timer
    text("Time: " + nf(timer, 0, 2), 200, 30); // Formatted to 2 decimal places
  }
}
