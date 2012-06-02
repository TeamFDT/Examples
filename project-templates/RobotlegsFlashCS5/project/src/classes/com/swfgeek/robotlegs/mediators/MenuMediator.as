package com.swfgeek.robotlegs.mediators {
	import com.swfgeek.robotlegs.views.MenuView;
	import com.swfgeek.robotlegs.events.SectionEvent;
	import org.robotlegs.base.ContextEvent;
	import org.robotlegs.mvcs.Mediator;

	/**
	* @class MenuMediator
	* @author Dave Gamez
	* Copyright (c) 2010 dave@swfgeek.net
	* Released under MIT license:
 	* http://www.opensource.org/licenses/mit-license.php
	* @date 4:58:25 PM
	* @version 0.1
	*/
	public class MenuMediator extends Mediator {
		[Inject]
		public var view : MenuView;
		public function MenuMediator() {
		}

		override public function onRegister() : void {
			view.open();
			
			super.onRegister();
			eventMap.mapListener(view, SectionEvent.SECTION1_REQUEST, eventDispatcher.dispatchEvent);
			eventMap.mapListener(view, SectionEvent.SECTION2_REQUEST, eventDispatcher.dispatchEvent);
			
			dispatch(new ContextEvent(ContextEvent.STARTUP));
		}
	}
}
