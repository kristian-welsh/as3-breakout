package test {
	import asunit.framework.TestSuite;
	import startup.BrickLayoutManagerTest;

	public class AllTests extends TestSuite {
		public function AllTests() {
			super();
			addTest(new BrickLayoutManagerTest("test_single_brick"));
			addTest(new BrickLayoutManagerTest("test_brick_at_right"));
			addTest(new BrickLayoutManagerTest("test_brick_at_down"));
			addTest(new BrickLayoutManagerTest("test_brick_at_down_right"));
			addTest(new BrickLayoutManagerTest("test_complex_format"));
			addTest(new BrickLayoutManagerTest("test_does_nothing_for_empty_array"));
			addTest(new BrickLayoutManagerTest("test_does_nothing_for_empty_2d_array"));
			addTest(new BrickLayoutManagerTest("test_does_nothing_for_all_spaces"));
			addTest(new BrickLayoutManagerTest("test_does_nothing_with_extra_dimentions"));
		}
	}
}