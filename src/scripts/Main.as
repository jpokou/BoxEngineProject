package scripts 
{
	/**
	 * ...
	 * @author MoZZyroth
	 */
	import flash.display.MovieClip;
	import flash.display.Stage;
	import flash.events.Event;
	import flash.display.*;
	import flash.utils.getDefinitionByName; 
	public class Main extends MovieClip
	{
		
		public function Main() 
		{
			trace("Begin of the Main");
			//our map is 2-dimensional array
			var myMap:Array = [	[1, 1, 1, 1, 1, 1, 1, 1], 
								[1, 0, 0, 0, 0, 0, 0, 1], 
								[1, 0, 1, 0, 0, 0, 0, 1], 
								[1, 0, 0, 0, 0, 1, 0, 1], 
								[1, 0, 0, 0, 0, 0, 0, 1], 
								[1, 1, 1, 1, 1, 1, 1, 1]];
			//declare game object that holds info
			var game:Game = new Game();	
			//make the map
			buildMap(myMap, game );
			trace("End of the main");
		}
		
		public function buildMap(map:Array, game:Game ) {
		
			//attach empty mc to hold all the tiles and char
			var tiles:empty = new empty();
			tiles.name = "Empty";
			this.addChild(tiles);
			game.clip = (MovieClip)(this.getChildByName("Empty")); 
			var mapWidth = map[0].length;
			var mapHeight = map.length;
			
			//loop to place tiles on stage
			for (var i = 0; i<mapHeight; ++i) {
				for (var j = 0; j<mapWidth; ++j) {
					//name of new tile
					var name = "t_"+i+"_"+j;
					//make new tile object in the game
					var tls:Tile = new (getDefinitionByName("scripts.Tile" + map[i][j]))();
					tls.name = name;
					tls.x = j * game.tileW;
					tls.y = i * game.tileH;
					tls.visible = true;
					game.clip.addChild(tls);
					((MovieClip)(game.clip.getChildByName(name))).gotoAndStop(tls.frame);
				}
			}
			var heroClip:HeroMc = new HeroMc();
			heroClip.name = "HERO";
			var hero:Hero = new Hero(game.tileW, game.tileH, heroClip );
			
			game.clip.addChild(hero.clip);
			hero.move(1,4);
		
		}
	}
}