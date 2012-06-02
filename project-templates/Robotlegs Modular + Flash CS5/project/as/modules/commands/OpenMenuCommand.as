package  ${packageStructure}.modules.commands 
{
	import com.grupow.display.ViewManager;
	import org.robotlegs.mvcs.Command;

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
