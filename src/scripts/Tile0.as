package scripts 
{
	/**
	 * ...
	 * @author MoZZyroth
	 */
	public dynamic class Tile0 extends Tile
	{
		//var visible:Boolean = true;
		private var _walkable:Boolean = true;
		private var _frame:Number = 1;
		public function Tile0() {
		}
		
		public function get walkable():Boolean {
				return  _walkable;
		}
		
		public function get frame():Number {
				return  _frame;
		}
		
		/*
		prototype.walkable = function() { 
			return true;
		};
		
		prototype.frame = function() { 
			return 1;
		};
		*/
		
	}

}