package {
	import data.MainLevelData;
	import flash.display.Sprite;
	import flash.events.Event;
	import graphics.*;
	import startup.BrickLayoutManager;
	
	public class Main extends Sprite {
		public function Main():void {
			if (stage)
				startGame();
			else
				addEventListener(Event.ADDED_TO_STAGE, startGame);
		}
		
		private function startGame(e:Event = null):void {
			//show each graphic (temp)
			/*var paddleGraphics:PaddleGraphics = new PaddleGraphics();
			var ballGraphics:BallGraphics = new BallGraphics();
			var brickGraphics:BrickGraphics = new BrickGraphics();
			paddleGraphics.x = 0;
			ballGraphics.x = 100;
			brickGraphics.x = 200;
			stage.addChild(paddleGraphics);
			stage.addChild(ballGraphics);
			stage.addChild(brickGraphics);*/
			var layoutManager:BrickLayoutManager = new BrickLayoutManager(MainLevelData.data, this);
			layoutManager.layIt();
		}
	}
}