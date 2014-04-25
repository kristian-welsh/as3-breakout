package startup {
	import asunit.framework.TestCase;
	import flash.display.Sprite;
	
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
		}
		
		public function test_no_bricks():void {
			setBricks([[0]]);
			assertEquals(0, container.numChildren);
		}
		
		public function test_single_brick():void {
			setBricks([[1]]);
		}
	}
}