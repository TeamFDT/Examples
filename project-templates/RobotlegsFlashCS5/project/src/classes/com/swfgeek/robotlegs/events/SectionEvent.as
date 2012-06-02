package com.swfgeek.robotlegs.events {
	import flash.events.Event;
	/**
	* @class SectionEvent
	* @author Dave Gamez
	* Copyright (c) 2010 dave@swfgeek.net
	* Released under MIT license:
 	* http://www.opensource.org/licenses/mit-license.php
	* @date 4:58:25 PM
	* @version 0.1
	*/
	public class SectionEvent extends Event
	{	
		public static const SECTION1_REQUEST:String = "SectionEvent_SECTION1_REQUEST";
		public static const SECTION2_REQUEST:String = "SectionEvent_SECTION2_REQUEST";
		public static const MENU_REQUEST:String = "SectionEvent_MENU_REQUEST";

		public function SectionEvent(type:String) 
		{
			super(type, false, false);
		}

		override public function clone():Event 
		{
			var event:SectionEvent = new SectionEvent(type);
			return event;
		}
	}
}
