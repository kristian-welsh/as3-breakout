package startup {
	import data.MainLevelData;
	import data.StageInfo;
	import flash.display.DisplayObject;
	import flash.display.DisplayObjectContainer;
	import flash.display.Sprite;
	import flash.display.Stage;
	import graphics.*;
	
	public class ViewInitializer {
		private var container:DisplayObjectContainer;
		
		public function ViewInitializer(container:DisplayObjectContainer) {
			this.container = container;
		}
		
		public function initializeView():void {
			addBackground();
			addPaddle();
			addBricks();
			addBall();
		}
		
		private function addBackground():void {
			container.addChild(new BackgroundGraphics());
		}
		
		private function addPaddle():void {
			var paddle:PaddleGraphics = new PaddleGraphics();
			container.addChild(paddle);
			centerToStage(paddle);
			paddle.y = StageInfo.HEIGHT - paddle.height - 5;
		}
		
		private function addBricks():void {
			var brickContainer:DisplayObjectContainer = new Sprite();
			var layoutManager:BrickLayoutManager = new BrickLayoutManager(MainLevelData.data, brickContainer);
			layoutManager.addBricks();
			container.addChild(brickContainer);
		}
		
		private function addBall():void {
			var ball:BallGraphics = new BallGraphics();
			container.addChild(ball);
			centerToStage(ball)
		}
		
		private function centerToStage(displayObject:DisplayObject):void {
			displayObject.x = StageInfo.WIDTH / 2 - displayObject.width / 2;
			displayObject.y = StageInfo.HEIGHT / 2 - displayObject.height / 2;
		}
	}
}