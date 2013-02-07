package scripts 
{
	/**
	 * ...
	 * @author MoZZyroth
	 */
	import flash.display.MovieClip;
	import flash.events.Event;
	public class Game extends MovieClip
	{
		private var _tileW:Number = 30; 
		private var _tileH:Number = 30;
		public var _tile0:Tile0;
		public var _tile1:Tile1;
		private var _clip:MovieClip;
		public function Game() 
		{
			_tile0 = new Tile0();
			_tile1 = new Tile1();
		}
		
		public function get tileW():Number
		{
			return _tileW;
		}
 
		public function get tileH():Number
		{
			return _tileH;
		}
 
		
		public function get tile0():Tile0
		{
			return _tile0;
		}
		
		public function get tile1():Tile1
		{
			return _tile1;
		}
		
		
		public function get clip():MovieClip
		{
			return _clip;
		}
 
		public function set tileW(value:Number):void
		{
			_tileW = value;
		}
		
		public function set tileH(value:Number):void
		{
			_tileH = value;
		}
		
		
 
		public function set tile0(value:Tile0):void
		{
			_tile0 = value;
		}
		
		public function set tile1(value:Tile1):void
		{
			_tile1 = value;
		}
		
		
		public function set clip(value:MovieClip):void
		{
			_clip = value;
		}
		
	}
}