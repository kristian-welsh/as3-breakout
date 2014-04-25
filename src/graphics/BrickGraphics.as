package graphics {
	import flash.display.MovieClip;
	
	public class BrickGraphics extends MovieClip {
		static public var BRICK_WIDTH:Number;
		static public var BRICK_HEIGHT:Number;
		
		// graphics linked in with fla
		public function BrickGraphics() {
			super();
			BRICK_WIDTH = width;
			BRICK_HEIGHT = height;
		}
		
		public function positionToIndex(xIndex:uint, yIndex:uint):void {
			this.x = xIndex * BRICK_WIDTH;
			this.y = yIndex * BRICK_HEIGHT;
		}
	}
}