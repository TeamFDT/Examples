package ${packageStructure}.modules.views {
	import flash.net.navigateToURL;
	import flash.net.URLRequest;
	import flash.display.SimpleButton;
	import ${packageStructure}.modules.events.SectionEvent;
	import com.grupow.display.AbstractView;
	import com.grupow.display.BasicButton;
	import flash.events.MouseEvent;

	public class MenuView extends AbstractView {
		private var section1Button : BasicButton;
		private var section2Button : BasicButton;
		private var fdt4Button :SimpleButton;
		private var robotlegsButton :SimpleButton;
		public function MenuView() {
			super();
		}

		override protected function opened_handler() : void {
			super.opened_handler();
			section1Button = getChildByName("section1_btn") as BasicButton;
			section1Button.addEventListener(MouseEvent.CLICK, onSection1Click);
			
			section2Button = getChildByName("section2_btn") as BasicButton;
			section2Button.addEventListener(MouseEvent.CLICK, onSection2Click);
			
			fdt4Button = getChildByName("fdt_btn") as SimpleButton;
			fdt4Button.addEventListener(MouseEvent.CLICK, onFdtClick);
			
			robotlegsButton = getChildByName("robotlegs_btn") as SimpleButton;
			robotlegsButton.addEventListener(MouseEvent.CLICK, onRobotlegsCLick);
		}
		
		private function onSection1Click(event : MouseEvent) : void {
			dispatchEvent(new SectionEvent(SectionEvent.SECTION1_REQUEST));
			close();
		}
		
		private function onSection2Click(event : MouseEvent) : void {
			dispatchEvent(new SectionEvent(SectionEvent.SECTION2_REQUEST));
			close();
		}
		
		private function onFdtClick(event : MouseEvent) : void {
			var fdtLink: URLRequest = new URLRequest("http://fdt.powerflasher.com");	
			navigateToURL(fdtLink,"_blank");		
		}
		
		private function onRobotlegsCLick(event : MouseEvent) : void {
			var robotlegsLink: URLRequest = new URLRequest("http://robotlegs.org");	
			navigateToURL(robotlegsLink,"_blank");			
		}
		
		override protected function close_hook():void 
		{
			section1Button.removeEventListener(MouseEvent.CLICK, onSection1Click);
			section2Button.removeEventListener(MouseEvent.CLICK, onSection2Click);
			
			gotoAndPlay("close");
			
		}
		

	}
}
