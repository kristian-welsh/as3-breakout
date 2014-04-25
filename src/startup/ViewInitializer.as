package startup {
	import data.MainLevelData;
	import flash.display.DisplayObject;
	import flash.display.Stage;
	import graphics.*;
	
	public class ViewInitializer {
		private var stage:Stage;
		
		public function ViewInitializer(stage:Stage) {
			this.stage = stage;
		}
		
		public function initializeView():void {
			addBackground();
			addPaddle();
			addBricks();
			addBall();
		}
		
		private function addBackground():void {
			stage.addChild(new BackgroundGraphics());
		}
		
		private function addPaddle():void {
			var paddle:PaddleGraphics = new PaddleGraphics();
			stage.addChild(paddle);
			centerToStage(paddle);
			paddle.y = stage.stageHeight - paddle.height - 5;
		}
		
		private function addBricks():void {
			var layoutManager:BrickLayoutManager = new BrickLayoutManager(MainLevelData.data, stage);
			layoutManager.addBricks();
		}
		
		private function addBall():void {
			var ball:BallGraphics = new BallGraphics();
			stage.addChild(ball);
			centerToStage(ball)
		}
		
		private function centerToStage(displayObject:DisplayObject):void {
			displayObject.x = stage.stageWidth / 2 - displayObject.width / 2;
			displayObject.y = stage.stageHeight / 2 - displayObject.height / 2;
		}
	}
}