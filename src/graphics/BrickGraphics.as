package graphics {
	import flash.display.MovieClip;
	
	public class BrickGraphics extends MovieClip {
		static public const BRICK_WIDTH:Number = 60;
		static public const BRICK_HEIGHT:Number = 15;
		
		// graphics linked in with fla
		public function BrickGraphics():void {
			super();
		}
		
		public function positionToIndex(xIndex:uint, yIndex:uint):void {
			this.x = xIndex * BRICK_WIDTH;
			this.y = yIndex * BRICK_HEIGHT;
		}
	}
}