import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException;

public class rocket_animation extends PApplet {

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

static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "rocket_animation" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
