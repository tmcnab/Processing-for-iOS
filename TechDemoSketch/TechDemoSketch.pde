
public static final int GSTATE_MAIN    =  1;
public static final int GSTATE_SCORES  =  2;
public static final int GSTATE_CREATOR =  4;
public static final int GSTATE_PLAY1   =  8;
public static final int GSTATE_PLAY2   = 16; 

protected int _gameState;



ArrayList ships;
void setup ( ) {
  size (1024, 768, P2D);
  ships = new ArrayList();
  _gameState = GSTATE_PLAY1;
  
}

void loadAssets() {
}

/////////////////////////////////////////////////////////////////////////////////////////////

void draw( ) {
  switch(_gameState)
  {
    case GSTATE_MAIN:    _renderMainView();    break;
    case GSTATE_SCORES:  _renderScoresView();  break;
    case GSTATE_CREATOR: _renderCreatorView(); break;
    case GSTATE_PLAY1:   _renderGameView1();   break;
    case GSTATE_PLAY2:   _renderGameView2();   break;
  }
}

void _renderMainView( ) { 
  
}

void _renderScoresView( ) {}

void _renderCreatorView( ) { }

void _renderGameView1( ) { 
  background(255);
  _renderGameViewBgLayer();
  renderShips();
}

void _renderGameView2( ) {
  
}

/////////////////////////////////////////////////////////////////////////////////////////////

void _renderGameViewBgLayer ( ) {
    float aThird = width/5;
    stroke(0);
    strokeWeight(10);
    line(aThird, 0, aThird, height);
    line(width-aThird, 0, width-aThird, height);
}

void renderShips ( ) {
  for (int i = ships.size() - 1; i >= 0; i--) {
    Ship s = (Ship)ships.get(i);
    s.draw();
  }
}

int shipCount = 0;

void mouseReleased () {
  if(shipCount < 4) {
    ships.add(new Ship(mouseX, mouseY, PI/2, 1, Ship.TYPEA));
    shipCount++;
  }
  else if (shipCount > 3 && shipCount < 8) {
    ships.add(new Ship(mouseX, mouseY, radians(270), 2, Ship.TYPEA));
  }
  if(shipCount == 8) {
    _gameState = GSTATE_PLAY2;
  }
}

