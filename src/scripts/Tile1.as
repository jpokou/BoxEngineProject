package scripts 
{
	/**
	 * ...
	 * @author MoZZyroth
	 */
	public dynamic class Tile1 extends Tile 
	{
		private var _walkable:Boolean = true;
		private var _frame:Number = 2;
		//var visible:Boolean = true;
		public function Tile1() {
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
			return 2;
		};
		*/
		
	}

}