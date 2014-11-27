package {
	import flash.display.Sprite;
	import startup.ViewInitializer;

	public class GameMain extends Sprite {
		public function GameMain():void {
			new ViewInitializer(this).initializeView();
		}
	}
}