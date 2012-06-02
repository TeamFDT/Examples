package com.swfgeek.robotlegs.commands 
{
	import com.grupow.display.ViewManager;

	import org.robotlegs.mvcs.Command;

	/**
	* @class OpenSection1Command
	* @author Dave Gamez
	* Copyright (c) 2010 dave@swfgeek.net
	* Released under MIT license:
 	* http://www.opensource.org/licenses/mit-license.php
	* @date 4:58:25 PM
	* @version 0.1
	*/
	public class OpenSection1Command extends Command 
	{
		[Inject]
		public var manager:ViewManager;
		
		public function OpenSection1Command()
		{
			
		}

		override public function execute():void 
		{
			manager.openView("section1");
		}
	}
}
