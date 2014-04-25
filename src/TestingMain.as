package {
	import asunit.textui.TestRunner;
	import flash.display.Sprite;
	import flash.events.Event;
	import test.AllTests;
	
	public class TestingMain extends Sprite {
		public function TestingMain():void {
			if (stage)
				startTests();
			else
				addEventListener(Event.ADDED_TO_STAGE, startTests);
		}
		
		private function startTests(e:Event = null):void {
			var testRunner:TestRunner = new TestRunner();
			stage.addChild(testRunner);
			testRunner.start(AllTests);
		}
	}
}