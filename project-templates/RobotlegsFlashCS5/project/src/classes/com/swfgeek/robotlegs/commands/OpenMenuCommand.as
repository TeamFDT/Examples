package  com.swfgeek.robotlegs.commands 
{
	import com.grupow.display.ViewManager;
	import org.robotlegs.mvcs.Command;
	/**
	* @class OpenMenuCommand
	* @author Dave Gamez
	* Copyright (c) 2010 dave@swfgeek.net
	* Released under MIT license:
 	* http://www.opensource.org/licenses/mit-license.php
	* @date 4:58:25 PM
	* @version 0.1
	*/
	public class OpenMenuCommand extends Command 
	{
		[Inject]
		public var manager:ViewManager;
		
		public function OpenMenuCommand()
		{
		}

		override public function execute():void 
		{
			manager.openView("menu");
		}
	}
}
