import luxe.Draw;
import luxe.Color;
import phoenix.geometry.CircleGeometry;

class Main extends luxe.Game {

  override function ready() : Void {
    createWave();
  }

  function createWave() : Array<phoenix.geometry.CircleGeometry> {
    var returnArray : Array<phoenix.geometry.CircleGeometry> = new Array();

    //Init variables (randomize)
    var c = new Color(1, 1, 1);
    var rx = 400;
    var ry = 100;
    var x = Luxe.screen.w/2;
    var y = Luxe.screen.h/2;

    //Create large wave first
    returnArray.push(Luxe.draw.circle({
      rx: rx,
      ry: ry,
      x: x,
      y: y,
    }));

    //Create 2 small waves on either side

    returnArray.push(Luxe.draw.circle({
      rx: rx/2,
      ry: ry/2,
      x: x - rx * 1.1, //rx * (.8, 1.1)
      y: y + ry * .25, //ry * (0, .33)
    }));

    returnArray.push(Luxe.draw.circle({
      rx: rx/2,
      ry: ry/2,
      x: x + rx * 1.1,
      y: y + ry * .25
    }));

    //Make small waves in corners maybe

    return returnArray;
  }

  override function config( c:luxe.AppConfig ) : luxe.AppConfig {
    c.window.title = "waves";

    return c;
  }
}
