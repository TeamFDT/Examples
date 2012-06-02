package ${packageStructure}.modules.commands 
{
	import com.grupow.display.ViewManager;

	import org.robotlegs.mvcs.Command;
	
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
