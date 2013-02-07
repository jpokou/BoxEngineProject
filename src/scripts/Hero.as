package scripts 
{
	/**
	 * ...
	 * @author MoZZyroth
	 */
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.display.*;
	public class Hero
	{
		private var _clip:MovieClip;
		private var _x:int;
		private var _y:int;
		private var _width:int;
		private var _height:int;
		private var _gameTileW: int = 0;
		private var _gameTileH: int = 0;
		
		public function Hero( gameTileW:int, gameTileH:int, clip:MovieClip ) 
		{
			_gameTileW = gameTileW;
			_gameTileH = gameTileH;
			_clip = clip;
			setWidth();
			setHeight();
		}
		
		public function get x():int
		{
			return _x;
		}
 
		public function set x( xtile:int ):void
		{
			_x = ( xtile * _gameTileW ) + _gameTileW / 2;
			moveX(_x);
		}
		
		public function get y():int
		{
			return _y;
		}
 
		public function set y( ytile:int ):void
		{
			_y = ( ytile * _gameTileH ) + _gameTileH / 2;
			moveY(_y);
		}
		
		public function get gameTileW():int
		{
			return _gameTileW;
		}
 
		public function set gameTileW( newGameTileW:int ):void
		{
			_gameTileW = newGameTileW;
		}
		
		
		public function get gameTileH():int
		{
			return _gameTileH;
		}
 
		public function set gameTileH( newGameTileH:int ):void
		{
			_gameTileH = newGameTileH;
		}
		
		
		private function moveX(valeur:int):void {
			_clip.x = valeur;
		}
		
		private function moveY(valeur:int):void {
			_clip.y = valeur;
		}
		
		public function move(valeurX:int, valeurY:int):void {
			this.x = valeurX;
			this.y = valeurY;
		}
		
		public function get width():int
		{
			return _width;
		}
 
		public function setWidth():void
		{
			_width =  _clip.width / 2;
			_clip.width = _width;
		}
		
		public function get Height():int
		{
			return _height;
		}
 
		public function setHeight():void
		{
			_height =  _clip.height / 2;
			_clip.height = _width;
		}
		
		public function get clip():MovieClip
		{
			return _clip;
		}
 
		public function set clip( newClip :MovieClip ):void
		{
			_clip=  newClip;
		}
	}

}