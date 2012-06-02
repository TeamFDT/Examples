package {
	import com.swfgeek.robotlegs.commands.OpenMenuCommand;
	import com.swfgeek.robotlegs.commands.SetUpCommand;
	import org.robotlegs.base.ContextEvent;
	import com.grupow.display.ViewManager;
	import com.swfgeek.robotlegs.mediators.Section2Mediator;
	import com.swfgeek.robotlegs.views.Section2View;
	import com.swfgeek.robotlegs.mediators.Section1Mediator;
	import com.swfgeek.robotlegs.views.Section1View;
	import com.swfgeek.robotlegs.commands.OpenSection2Command;
	import com.swfgeek.robotlegs.commands.OpenSection1Command;
	import com.swfgeek.robotlegs.events.SectionEvent;
	import com.swfgeek.robotlegs.mediators.MenuMediator;
	import com.swfgeek.robotlegs.views.MenuView;
	import org.robotlegs.mvcs.Context;
	import flash.display.DisplayObjectContainer;
	
	/**
	* @class MainContext
	* @author Dave Gamez
	* Copyright (c) 2010 dave@swfgeek.net
	* Released under MIT license:
 	* http://www.opensource.org/licenses/mit-license.php
	* @date 4:58:25 PM
	* @version 0.1
	*/
	
	public class MainContext extends Context {
		public function MainContext(contextView : DisplayObjectContainer = null, autoStartup : Boolean = true) {
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
