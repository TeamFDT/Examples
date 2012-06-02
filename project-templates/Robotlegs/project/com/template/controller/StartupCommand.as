package com.${clientFolderName}.${projectFolderName}.controller {
	import com.${clientFolderName}.${projectFolderName}.view.components.SampleView;

	import org.robotlegs.mvcs.Command;

	public class StartupCommand extends Command
	{
		override public function execute():void
		{
			contextView.addChild(new SampleView());
		}
	}
}