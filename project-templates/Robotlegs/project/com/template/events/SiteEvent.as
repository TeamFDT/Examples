package com.${clientFolderName}.${projectFolderName}.events {
	import flash.events.Event;

	public class SiteEvent extends Event
	{
		public static const CREATE_MEDIATORS : String = "CREATE_MEDIATORS";
		public static const STARTUP : String = "STARTUP";
	
		public function SiteEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false){
			super(type, bubbles, cancelable);
		}
		
		override public function clone():Event{
			return new SiteEvent(type, bubbles, cancelable);
		}
	}
}
