package startup {
	import asunit.framework.TestCase;
	import flash.display.Sprite;
	import graphics.BrickGraphics;
	
	public class BrickLayoutManagerTest extends TestCase {
		private var container:Sprite;
		private var manager:BrickLayoutManager;
		
		public function BrickLayoutManagerTest(methodName:String) {
			super(methodName);
		}
		
		protected override function setUp():void {
			container = new Sprite();
		}
		
		private function setBricks(formation:Array):void {
			manager = new BrickLayoutManager(formation, container);
			manager.addBricks();
		}
		
		public function test_single_brick():void {
			setBricks([[1]]);
			assertNumBricksReceived(1);
			assertFirstBrickAt(0, 0);
		}
		
		public function test_brick_at_right():void {
			setBricks([[0, 1]]);
			assertFirstBrickAt(1, 0);
		}
		
		public function test_brick_at_down():void {
			setBricks([[0], [1]]);
			assertFirstBrickAt(0, 1);
		}
		
		public function test_brick_at_down_right():void {
			setBricks([[0, 0], [0, 1]]);
			assertFirstBrickAt(1, 1);
		}
		
		public function test_complex_format():void {
			setBricks([
				[1, 0, 1],
				[0, 1, 0],
				[1, 0, 1]]);
			assertNumBricksReceived(5);
			assertBrickPositionedAt(0, 0, manager.brickAt(0));
			assertBrickPositionedAt(2, 0, manager.brickAt(1));
			assertBrickPositionedAt(1, 1, manager.brickAt(2));
			assertBrickPositionedAt(0, 2, manager.brickAt(3));
			assertBrickPositionedAt(2, 2, manager.brickAt(4));
		}
		
		public function test_does_nothing_for_empty_array():void {
			setBricks([]);
			assertNumBricksReceived(0);
		}
		
		public function test_does_nothing_for_empty_2d_array():void {
			setBricks([[]]);
			assertNumBricksReceived(0);
		}
		
		public function test_does_nothing_for_all_spaces():void {
			setBricks([
			[0, 0, 0],
			[0, 0, 0],
			[0, 0, 0]]);
			assertNumBricksReceived(0);
		}
		
		public function test_does_nothing_with_extra_dimentions():void {
			setBricks([[[]]]);
			assertNumBricksReceived(0);
		}
		
		private function assertFirstBrickAt(x:Number, y:Number):void {
			assertBrickPositionedAt(x, y, manager.brickAt(0));
		}
		
		private function assertBrickPositionedAt(x:Number, y:Number, brick:BrickGraphics):void {
			assertEquals(x * BrickGraphics.BRICK_WIDTH, brick.x);
			assertEquals(y * BrickGraphics.BRICK_HEIGHT, brick.y);
		}
		
		private function assertNumBricksReceived(number:Number):void {
			assertEquals(number, container.numChildren);
		}
	}
}