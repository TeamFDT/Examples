package ${packageStructure}.modules.contexts {
	import ${packageStructure}.modules.mediators.Section2Mediator;
	import ${packageStructure}.modules.views.Section2View;
	import ${packageStructure}.modules.mediators.Section1Mediator;
	import ${packageStructure}.modules.views.Section1View;
	import ${packageStructure}.modules.commands.SetUpCommand;
	import ${packageStructure}.modules.commands.OpenSection1Command;
	import ${packageStructure}.modules.commands.OpenSection2Command;
	import ${packageStructure}.modules.commands.OpenMenuCommand;
	import ${packageStructure}.modules.events.SectionEvent;
	import ${packageStructure}.modules.mediators.MenuMediator;
	import ${packageStructure}.modules.views.MenuView;
	
	import org.robotlegs.utilities.modular.mvcs.ModuleContext;
	import org.robotlegs.base.ContextEvent;
	
	import com.grupow.display.ViewManager;
	import flash.display.DisplayObjectContainer;
	/**
	* @class AppContext
	* @author Dave Gamez
	* Copyright (c) 2010 dave@swfgeek.net
	* Released under MIT license:
 	* http://www.opensource.org/licenses/mit-license.php
	* @date June 21 2011, 6:00:00 AM
	* @version 0.2
	*/
	
	public class AppContext extends ModuleContext {
		public function AppContext(contextView : DisplayObjectContainer = null, autoStartup : Boolean = true) {
			super(contextView, autoStartup);
		}
		
		
		override public function startup() : void {
			
			commandMap.mapEvent(ContextEvent.STARTUP, SetUpCommand, ContextEvent);
			commandMap.mapEvent(SectionEvent.SECTION1_REQUEST, OpenSection1Command, SectionEvent);
			commandMap.mapEvent(SectionEvent.SECTION2_REQUEST, OpenSection2Command, SectionEvent);
			commandMap.mapEvent(SectionEvent.MENU_REQUEST, OpenMenuCommand, SectionEvent);
			
			injector.mapSingleton(ViewManager);
			mediatorMap.mapView(MenuView, MenuMediator);
			mediatorMap.mapView(Section1View, Section1Mediator);
			mediatorMap.mapView(Section2View, Section2Mediator);
			
			super.startup();
		}
	}
}
