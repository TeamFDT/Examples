package  {
	import com.greensock.loading.SWFLoader;
	import com.greensock.events.LoaderEvent;
	import com.greensock.loading.LoaderMax;
	import flash.text.TextField;
	import flash.display.MovieClip;
	import com.grupow.display.AbstractView;
	/**
	* @class LoaderView
	* @author Dave Gamez
	* Copyright (c) 2010 dave@swfgeek.net
	* Released under MIT license:
 	* http://www.opensource.org/licenses/mit-license.php
	* @date 4:58:25 PM
	* @version 0.1
	* 
	*/
	public class MainLoader extends AbstractView {
		private var _isLoadComplete:Boolean;
		private var _progress:Number;
		private var _loader : LoaderMax;
		private var _loops : Number;
		private var _loaderClip : MovieClip;
		
		public function MainLoader() {
			super();
			_progress = 0;
			_loops = 0;	
			open();
		}
		
		
		override protected function opened_handler() : void {
			super.opened_handler();
			
			_loaderClip = MovieClip(getChildByName("loader_mc"));
			startLoading();
		}

		
		protected function startLoading() : void {
			_loader = new LoaderMax({name:"mainLoader", onProgress:progressHandler, onComplete : loadComplete});
			_loader.append(new SWFLoader("main.swf",{name:"main", estimatedBytes:58225, container:root }));
			_loader.load();
		}
		
		protected function progressHandler(event : LoaderEvent) : void {
			updateProgress(_loader.progress);
		}
		
		protected function complete_handler():void 
		{
			if(_isLoadComplete) {
				stop();
				close();
			}
			
			_loops = _loops + 1; 
		}

		protected function updateLoader():void {
			var p:int = Math.floor(_progress * 100);
			
			if(p > 99) {
				p = 99;
			}
			
			var u:int = int(p / 10);
			var d:int = int(p % 10);
	
			var u_txt : TextField = MovieClip(_loaderClip.getChildByName("num1_mc")).getChildByName("output_txt") as TextField;
			var d_txt : TextField = MovieClip(_loaderClip.getChildByName("num2_mc")).getChildByName("output_txt") as TextField;
			
			u_txt.text = u.toString();
			d_txt.text = d.toString();	
			
		}

		
		public function loadComplete(e: LoaderEvent):void {
			_isLoadComplete = true;
			complete_handler();
		}

		public function updateProgress(progress:Number):void {
			_progress = progress;
			updateLoader();
		}
	}
}
