package com.powerflasher.SampleApp {
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.display.Sprite;

	public class AIR33features extends Sprite {
		public function AIR33features() {
			stage.scaleMode = StageScaleMode.NO_SCALE;
			stage.align = StageAlign.TOP_LEFT;

			drawRectangle();
		}

		private function drawRectangle() : void {
			var s : Sprite = new Sprite();
			s.graphics.beginFill(0xff0000, 1);
			s.graphics.drawRect(0, 0, 100, 100);
			s.graphics.endFill();
			addChild(s);
			trace("Hello from AIR 3.3");
		}
	}
}
