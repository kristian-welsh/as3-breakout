package test {
	import asunit.framework.TestSuite;
	import startup.BrickLayoutManagerTest;

	public class AllTests extends TestSuite {
		public function AllTests() {
			super();
			addTest(new BrickLayoutManagerTest("test_no_bricks"));
		}
	}
}