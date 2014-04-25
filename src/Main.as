package {
	import asunit.textui.TestRunner;
	import flash.display.Sprite;
	import flash.events.Event;
	import graphics.*;
	import test.AllTests;
	
	public class Main extends Sprite {
		static public const IS_TEST:Boolean = true;
		
		public function Main():void {
			if (stage)
				startApp();
			else
				addEventListener(Event.ADDED_TO_STAGE, startApp);
		}
		
		private function startApp(e:Event = null):void {
			if (IS_TEST)
				startTests();
			else
				startGame();
		}
		
		private function startTests():void {
			var testRunner:TestRunner = new TestRunner();
			stage.addChild(testRunner);
			testRunner.start(AllTests);
		}
		
		private function startGame():void {
			//show each graphic (temp)
			var paddleGraphics:PaddleGraphics = new PaddleGraphics();
			var ballGraphics:BallGraphics = new BallGraphics();
			var brickGraphics:BrickGraphics = new BrickGraphics();
			paddleGraphics.x = 0;
			ballGraphics.x = 100;
			brickGraphics.x = 200;
			stage.addChild(paddleGraphics);
			stage.addChild(ballGraphics);
			stage.addChild(brickGraphics);
		}
	}
}