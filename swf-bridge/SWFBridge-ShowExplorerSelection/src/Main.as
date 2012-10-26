package {
	import fdt.resource.FdtResource;
	import fdt.resource.IFdtResource;

	import swf.bridge.FdtEditorContext;
	import swf.bridge.FdtExplorerContext;
	import swf.bridge.IFdtActionBridge;
	import swf.plugin.ISwfActionPlugin;

	import flash.display.Sprite;
	import flash.utils.Dictionary;

	[FdtSwfPlugin(name="ShowExplorerSelection", pluginType="action", toolTip="Some tooltip")]
	public class Main extends Sprite implements ISwfActionPlugin {
		private var _bridge : IFdtActionBridge;

		public function Main() {
			FdtSwfPluginIcon;
		}

		public function callEntryAction(entryId : String) : void {
			_bridge.explorer.getCurrentContext().sendTo(this, f);
			_bridge.core.launchAntScipt('<?xml version="1.0" encoding="UTF-8"?><project default="test"><target name="test">'
			+'<fdt.loadProjectProperties projectName="ShowExplorerSelection"/>'
			+'<echo message="${FDTProjectPath}"/>'
			+'<echo message="from SwfBrigde"/></target></project>', "Test Swf Runner", true).sendTo(this, res);
		}

		private function res(i : int) : void {
			trace("Ant call res "+i);
		}

		private function f(fc : FdtExplorerContext) : void {
			trace(fc.selectionCount);
			for each (var r : IFdtResource in fc.selection) {
				if (r is FdtResource) {
					trace(FdtResource(r).path);
				}
			}
		}

		public function createProposals(ec : FdtEditorContext) : void {
			
		}

		public function init(bridge : IFdtActionBridge) : void {
			_bridge = bridge;			
			_bridge.ui.registerMenuEntry("hi1", "Option 1", "", "", "mainMenu/file:end").sendTo(null, null);
			_bridge.ui.registerMenuEntry("hi2", "Option 2", "", "", "explorerContextMenu:begin").sendTo(null, null);
			_bridge.ui.registerMenuEntry("hi3", "Option 3", "", "", "explorerContextMenu/Classpath:before").sendTo(null, null);
			_bridge.ui.registerMenuEntry("hi4", "Option 4", "", "", "explorerContextMenu/Classpath:begin").sendTo(null, null);

			_bridge.ui.registerMenu("hi4", "Option 4.5", "", "explorerContextMenu/Classpath:before").sendTo(null, null);
			_bridge.ui.registerMenuEntry("hi5", "Option 5", "", "", "explorerContextMenu/hi4:end").sendTo(null, null);
			_bridge.ui.registerMenuEntry("hi6", "Option 6", "", "", "explorerContextMenu/hi4:end").sendTo(null, null);
			_bridge.ui.registerMenuEntry("hi7", "Option 7", "", "", "explorerContextMenu/hi4:end").sendTo(null, null);
			_bridge.ui.registerMenuEntry("hi8", "Option 8", "", "", "explorerContextMenu/hi4:end").sendTo(null, null);
			_bridge.ui.registerMenuEntry("hi8", "Option 9", "", "", "explorerContextMenu/Rename:after").sendTo(null, null);
		}

		public function dialogClosed(dialogInstanceId : String, result : String) : void {
		}

		public function setOptions(options : Dictionary) : void {
		}
	}
}
