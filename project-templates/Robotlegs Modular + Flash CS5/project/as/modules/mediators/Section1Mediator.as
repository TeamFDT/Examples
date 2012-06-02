package ${packageStructure}.modules.mediators {
	import ${packageStructure}.modules.events.SectionEvent;
	import ${packageStructure}.modules.views.Section1View;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class Section1Mediator extends Mediator {
		[Inject]
		public var view : Section1View;
		public function Section1Mediator() {
		}

		override public function onRegister() : void {
			super.onRegister();
			eventMap.mapListener(view, SectionEvent.MENU_REQUEST, eventDispatcher.dispatchEvent);
		}

	}
}
