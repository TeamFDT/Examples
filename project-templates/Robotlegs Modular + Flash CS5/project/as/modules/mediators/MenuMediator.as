package  ${packageStructure}.modules.mediators {

	import ${packageStructure}.modules.events.SectionEvent;
	import ${packageStructure}.modules.views.MenuView;
	
	import org.robotlegs.base.ContextEvent;
	import org.robotlegs.mvcs.Mediator;
	
	public class MenuMediator extends Mediator {
		[Inject]
		public var view : MenuView;
		public function MenuMediator() {
		}

		override public function onRegister() : void {
			view.open();
			
			super.onRegister();
			eventMap.mapListener(view, SectionEvent.SECTION1_REQUEST, eventDispatcher.dispatchEvent);
			eventMap.mapListener(view, SectionEvent.SECTION2_REQUEST, eventDispatcher.dispatchEvent);
			
			dispatch(new ContextEvent(ContextEvent.STARTUP));
		}
	}
}
