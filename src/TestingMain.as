package {
	import asunit.textui.TestRunner;
	import flash.display.Sprite;
	import test.AllTests;

	public class TestingMain extends Sprite {
		public function TestingMain():void {
			runTests();
		}

		private function runTests():void {
			var testRunner:TestRunner = new TestRunner();
			this.addChild(testRunner);
			testRunner.start(AllTests);
		}
	}
}