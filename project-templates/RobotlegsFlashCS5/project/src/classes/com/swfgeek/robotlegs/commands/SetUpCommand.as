package com.swfgeek.robotlegs.commands 
{
	import com.swfgeek.robotlegs.events.SectionEvent;
	import com.grupow.display.IView;
	import com.grupow.display.ViewManager;
	import org.robotlegs.mvcs.Command;

	/**
	* @class SetUpCommand
	* @author Dave Gamez
	* Copyright (c) 2010 dave@swfgeek.net
	* Released under MIT license:
 	* http://www.opensource.org/licenses/mit-license.php
	* @date 4:58:25 PM
	* @version 0.1
	*/

	public class SetUpCommand extends Command 
	{
		[Inject]
		public var manager:ViewManager;

		public function SetUpCommand()
		{
			
		}

		override public function execute():void 
		{
			manager.clear();
			
			manager.addView(contextView.getChildByName("menu_mc") as IView, "menu");
			manager.addView(contextView.getChildByName("section1_mc") as IView, "section1");
			manager.addView(contextView.getChildByName("section2_mc") as IView, "section2");
			
			dispatch(new SectionEvent(SectionEvent.MENU_REQUEST));
		}
	}
}
