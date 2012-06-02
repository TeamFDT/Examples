package com.${clientFolderName}.${projectFolderName}.view{
	import com.${clientFolderName}.${projectFolderName}.view.components.SampleView;
	
	import org.robotlegs.mvcs.Mediator;

	public class SampleMediator extends Mediator {
		[Inject]
		public var view:SampleView;
		
		override public function onRegister():void{
			
		}
	}
}