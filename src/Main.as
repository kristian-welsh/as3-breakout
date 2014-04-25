package {
	import flash.display.Sprite;
	import flash.events.Event;
	import startup.ViewInitializer;
	
	public class Main extends Sprite {
		public function Main():void {
			if (stage)
				startGame();
			else
				addEventListener(Event.ADDED_TO_STAGE, startGame);
		}
		
		private function startGame(e:Event = null):void {
			new ViewInitializer(stage).initializeView();
		}
	}
}