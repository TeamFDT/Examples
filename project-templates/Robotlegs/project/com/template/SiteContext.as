package com.${clientFolderName}.${projectFolderName}{
	import com.${clientFolderName}.${projectFolderName}.controller.CreateMediatorsCommand;
	import com.${clientFolderName}.${projectFolderName}.controller.StartupCommand;
	import com.${clientFolderName}.${projectFolderName}.events.SiteEvent;
	import com.${clientFolderName}.${projectFolderName}.model.ApplicationModel;
	
	import flash.display.DisplayObjectContainer;

	import org.robotlegs.mvcs.Context;

	public class SiteContext extends Context{
		public function SiteContext(contextView : DisplayObjectContainer = null, autoStartup : Boolean = true){
			super(contextView, autoStartup);
		}
		
		override public function startup():void{
			injector.mapSingleton(ApplicationModel);
			injector.getInstance(ApplicationModel);
			
			commandMap.mapEvent(SiteEvent.CREATE_MEDIATORS, CreateMediatorsCommand, SiteEvent);
			commandMap.mapEvent(SiteEvent.STARTUP, StartupCommand, SiteEvent);
			
			dispatchEvent(new SiteEvent(SiteEvent.CREATE_MEDIATORS));
			dispatchEvent(new SiteEvent(SiteEvent.STARTUP));
		}
	}
}