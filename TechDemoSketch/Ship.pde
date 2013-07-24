
public class Ship {
  
  // Class Constants
  public static final int TYPEA = 1;
  public static final int TYPEB = 2;
  
  float _xp, _yp;      // Position on Field
  float _ap;           // Orientation (radians)
  int   _pl;           // 
  int _col;          // 
  int   _type;         // Type of Ship
  PImage _shipImage;
  
  public Ship (float x, float y, float orientation, int player, int type) {
    this._xp = x;
    this._yp = y;
    this._ap = orientation;
    this._type = type;
    if(player == 1) {
      this._col = color(0, 0, 255);
    } else {
      this._col = color(0, 255, 0);
    }
    this._pl = player;
    _shipImage = loadImage("ship.png");
    _shipImage.resize(0, 100);
  }
  
  public void update ( ) {
    
  }
  
  public void draw ( ) {
    pushMatrix();
      translate(_xp, _yp);
      rotate(_ap);
      imageMode(CENTER);
      image(_shipImage, 0, 0);
    popMatrix();
  }
}
