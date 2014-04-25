package startup {
	import flash.display.DisplayObjectContainer;
	import graphics.BrickGraphics;
	
	public class BrickLayoutManager {
		private var startingFormation:Array = null;
		private var container:DisplayObjectContainer = null;
		private var bricks:Vector.<BrickGraphics> = new Vector.<BrickGraphics>();
		
		public function BrickLayoutManager(startingFormation:Array, container:DisplayObjectContainer) {
			this.startingFormation = startingFormation;
			this.container = container;
		}
		
		// possible duplication of loop structure in addBrickRow()
		public function addBricks():void {
			for (var y:uint = 0; y < startingFormation.length; y++)
				addBrickRow(y);
		}
		
		private function addBrickRow(y:uint):void {
			for (var x:uint = 0; x < startingFormation[y].length; x++)
					addBrickIfExists(x, y);
		}
		
		private function addBrickIfExists(x:uint, y:uint):void {
			if (startingFormation[y][x] == 1)
				addBrick(x, y);
		}
		
		private function addBrick(xIndex:uint, yIndex:uint):void {
			var newBrick:BrickGraphics = new BrickGraphics();
			newBrick.positionToIndex(xIndex, yIndex);
			container.addChild(newBrick);
			bricks.push(newBrick);
		}
		
		public function brickAt(number:Number):BrickGraphics {
			return bricks[number];
		}
	}
}