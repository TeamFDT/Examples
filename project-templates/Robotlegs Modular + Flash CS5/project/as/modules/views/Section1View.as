package ${packageStructure}.modules.views {
	import ${packageStructure}.modules.events.SectionEvent;
	import com.grupow.display.AbstractView;
	import com.grupow.display.BasicButton;
	import flash.events.MouseEvent;

	public class Section1View extends AbstractView {
		private var backButton : BasicButton;
		public function Section1View() {
			super();
		}
		
		override protected function opened_handler():void 
		{
			super.opened_handler();
			
			backButton = getChildByName("back_btn") as BasicButton;
			backButton.addEventListener(MouseEvent.CLICK, onSection1Click);
			
		}

		override protected function close_hook():void 
		{
			backButton.removeEventListener(MouseEvent.CLICK, onSection1Click);
			super.close_hook();
		}

		private function onSection1Click(event:MouseEvent):void 
		{
			dispatchEvent(new SectionEvent(SectionEvent.MENU_REQUEST));
		}
	}
}
