package com.${clientFolderName}.${projectFolderName}.controller {
	import com.${clientFolderName}.${projectFolderName}.view.SampleMediator;
	import com.${clientFolderName}.${projectFolderName}.view.components.SampleView;

	import org.robotlegs.mvcs.Command;

	public class CreateMediatorsCommand extends Command {
		override public function execute():void {
			mediatorMap.mapView(SampleView, SampleMediator);
		}
	}
}