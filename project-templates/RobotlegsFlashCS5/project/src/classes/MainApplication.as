package {
	import flash.events.Event;
	import flash.display.MovieClip;	/**	* @class MainApplication	* @author Dave Gamez	* Copyright (c) 2010 dave@swfgeek.net	* Released under MIT license: 	* http://www.opensource.org/licenses/mit-license.php	* @date 4:58:25 PM	* @version 0.1	*/	public class  MainApplication extends MovieClip {
		private var context : MainContext;
		public function MainApplication(){			super();			this.addEventListener(Event.ADDED_TO_STAGE, onAddedToStage_handler);		}

		private function onAddedToStage_handler(event : Event) : void {			this.removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage_handler);			context  = new MainContext(this,false);			context.startup();
		}			}}