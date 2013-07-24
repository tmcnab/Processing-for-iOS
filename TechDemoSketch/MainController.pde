

public class MainController {
  
  protected PImage _mainLogo;
  protected PFont  _mainFont; 

  public MainController() {
    _mainFont = loadFont("Slider-48.vlw");
    textFont(_mainFont);  
  }
  
  public void draw () {
    background(0);
    textAlign(CENTER);
    text("SYSTEM WARS", width/2, height/4);
  }
  
  public void onTouch() {
    
  }
}


