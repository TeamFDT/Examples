package  ${packageStructure}.modules.events {
	import flash.events.Event;
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
