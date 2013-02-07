package scripts 
{
	/**
	 * ...
	 * @author MoZZyroth
	 */
	
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.display.*;
	public class rectangle extends MovieClip  
	{
		
		public function rectangle(valX:int, valY:int) 
		{
			this.x = valX;
			this.y = valY;
			this.visible = true;
			this.scaleX = 1.0;
			this.scaleY = 1.0;
		}
		
	}

}