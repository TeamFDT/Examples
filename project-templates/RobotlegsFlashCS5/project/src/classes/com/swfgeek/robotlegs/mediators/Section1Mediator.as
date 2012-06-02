package com.swfgeek.robotlegs.mediators {
	import com.swfgeek.robotlegs.views.Section1View;
	import com.swfgeek.robotlegs.events.SectionEvent;
	import org.robotlegs.mvcs.Mediator;

	/**
	* @class Section1Mediator
	* @author Dave Gamez
	* Copyright (c) 2010 dave@swfgeek.net
	* Released under MIT license:
 	* http://www.opensource.org/licenses/mit-license.php
	* @date 4:58:25 PM
	* @version 0.1
	*/
	public class Section1Mediator extends Mediator {
		[Inject]
		public var view : Section1View;
		public function Section1Mediator() {
		}

		override public function onRegister() : void {
			super.onRegister();
			eventMap.mapListener(view, SectionEvent.MENU_REQUEST, eventDispatcher.dispatchEvent);
		}

	}
}
