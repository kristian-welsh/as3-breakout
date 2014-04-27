package startup {
	import asunit.framework.TestCase;
	import data.StageInfo;
	import flash.display.DisplayObject;
	import flash.display.DisplayObjectContainer;
	import flash.display.Sprite;
	import flash.geom.Point;

	public class ViewInitializerTest extends TestCase {
		private var container:Sprite = new Sprite();
		
		public function ViewInitializerTest(testMethodName:String) {
			super(testMethodName);
		}
		
		override protected function setUp():void {
			var initializer:ViewInitializer = new ViewInitializer(container);
			initializer.initializeView();
		}
		
		public function it_positions_the_background_correctly():void {
			assertPositionedAt(correctBackgroundPosition(), findBackground());
		}
		
		public function it_positions_the_paddle_correctly():void {
			assertPositionedAt(correctPaddlePosition(), findPaddle());
		}
		
		public function it_positions_the_bricks_correctly():void {
			assertPositionedAt(correctBricksPosition(), findBricks());
		}
		
		public function it_positions_the_ball_correctly():void {
			assertPositionedAt(correctBallPosition(), findBall());
		}
		
		private function assertPositionedAt(expectedPosition:Point, objectToQuery:DisplayObject):void {
			assertEquals(expectedPosition.x, objectToQuery.x);
			assertEquals(expectedPosition.y, objectToQuery.y);
		}
		
		private function correctBackgroundPosition():Point {
			return new Point(0, 0);
		}
		
		private function correctPaddlePosition():Point {
			return new Point(StageInfo.WIDTH / 2 - findPaddle().width / 2, StageInfo.HEIGHT - findPaddle().height - 5);
		}
		
		private function correctBricksPosition():Point {
			return new Point(0, 0);
		}
		
		private function correctBallPosition():Point {
			return new Point(StageInfo.WIDTH / 2 - findBall().width / 2, StageInfo.HEIGHT / 2 - findBall().height / 2);
		}
		
		private function findBackground():DisplayObject {
			return container.getChildAt(0);
		}
		
		private function findPaddle():DisplayObject {
			return container.getChildAt(1);
		}
		
		private function findBricks():DisplayObject {
			return container.getChildAt(2);
		}
		
		private function findBall():DisplayObject {
			return container.getChildAt(3);
		}
	}
}