package ${packageStructure}.modules.mediators {
	import ${packageStructure}.modules.events.SectionEvent;
	import ${packageStructure}.modules.views.Section2View;
	import org.robotlegs.mvcs.Mediator;
	
	public class Section2Mediator extends Mediator {
		[Inject]
		public var view : Section2View;
		
		public function Section2Mediator() {
		}

		override public function onRegister() : void {
			super.onRegister();
			eventMap.mapListener(view, SectionEvent.MENU_REQUEST, eventDispatcher.dispatchEvent);
		}

	}
}
