import luxe.Draw;
import luxe.Color;
import phoenix.geometry.ArcGeometry;

class Main extends luxe.Game {

  override function ready() : Void {
    var radiusx = 400;
    var radiusy = 100;
    var pwave = Luxe.draw.arc({
      rx: radiusx,
      ry: radiusy,
      start_angle: 1,
      end_angle: -181,
      x: radiusx,
      y: Luxe.screen.h/2+1,
    });
  }

  function createWave() : Array<phoenix.geometry.ArcGeometry> {
    var returnArray : Array<phoenix.geometry.ArcGeometry> = new Array();
    //Create large wave first


    //Create 2 small waves on either side
    

    return returnArray;
  }

  override function config( c:luxe.AppConfig ) : luxe.AppConfig {
    c.window.title = "waves";

    return c;
  }
}
