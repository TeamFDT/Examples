package
{
	import fdt.resource.FdtResource;
	import swf.bridge.FdtExplorerContext;
	import swf.bridge.FdtEditorContext;
	import swf.bridge.IFdtActionBridge;

	import flash.utils.Dictionary;

	import swf.plugin.ISwfActionPlugin;

	import flash.display.Sprite;

	[FdtSwfPlugin(name="SWFBridgeTest", pluginType="action", toolTip="Some tooltip")]
	public class Main extends Sprite implements ISwfActionPlugin
	{
		private var bridge : IFdtActionBridge;

		public function Main()
		{
			FdtSwfPluginIcon;
		}

		public function callEntryAction(entryId : String) : void
		{
			bridge.explorer.getCurrentContext().sendTo(this, test);
			bridge.core.launchAntScipt('<project default="test"><target name="test"><echo>Hello From Ant AGAIN '+ entryId+'</echo></target></project>', "MyTestBuild").sendTo(this, myReturn);
		}

		private function test(context:FdtExplorerContext) : void
		{
			for each (var item : FdtResource in context.selection) {
				
				trace('item: ' + (item.path));
			}
			
			trace('context: ' + (context));
		}

		private function myReturn(value:int) : void
		{
			trace('value: ' + (value));
		}

		public function createProposals(ec : FdtEditorContext) : void
		{
			
		}

		public function init(bridge : IFdtActionBridge) : void
		{
			this.bridge = bridge;
			bridge.ui.registerMenuEntry("Anything", "Run My ANT Script", "", "", "explorerContextMenu/Classpath:begin").sendTo(null,null);
						
		}

		public function dialogClosed(dialogInstanceId : String, result : String) : void
		{
		}

		public function setOptions(options : Dictionary) : void
		{
		}
	}
}
