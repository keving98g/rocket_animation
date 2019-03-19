PImage rocket;
PImage asteroid;

public void setup() {
    // initial setup
    background(51);
    imageMode(CENTER);
    rocket = loadImage("./images/rocket_ship.png");
    asteroid = loadImage("./images/asteroid.png"); 
}

public void draw() {
    // loops
    image(rocket, width/2, height/2);
}

public void mouseReleased() {
    // called when mouse is released
}

public void settings() {
    int initWidth = 1800;
    int initHeight = 900;
    if(args != null && args.length == 2) {
        initWidth = Integer.parseInt(args[0]);
        initHeight = Integer.parseInt(args[1]);
    } else {
        println("Incorrect Syntax (Two args -> width, height)");
    }
    size(initWidth, initHeight);
}

