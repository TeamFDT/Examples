package com.${clientFolderName}.${projectFolderName}{
	import flash.display.Sprite;

	public class Main extends Sprite{
		private var _siteContext:SiteContext;
		
		public function Main(){
			init();
		}
		
		public function init():void{
			_siteContext = new SiteContext(this);
		}
	}
}