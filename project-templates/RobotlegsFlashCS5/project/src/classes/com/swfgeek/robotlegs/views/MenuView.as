package com.swfgeek.robotlegs.views {
	import com.swfgeek.robotlegs.events.SectionEvent;
	import com.grupow.display.AbstractView;
	import com.grupow.display.BasicButton;
	import flash.events.MouseEvent;

	/**
	* @class MenuView
	* @author Dave Gamez
	* Copyright (c) 2010 dave@swfgeek.net
	* Released under MIT license:
 	* http://www.opensource.org/licenses/mit-license.php
	* @date 4:58:25 PM
	* @version 0.1
	*/
	public class MenuView extends AbstractView {
		private var section1Button : BasicButton;
		private var section2Button : BasicButton;
		public function MenuView() {
			super();
		}

		override protected function opened_handler() : void {
			super.opened_handler();
			section1Button = getChildByName("section1_btn") as BasicButton;
			section1Button.addEventListener(MouseEvent.CLICK, onSection1Click);
			
			section2Button = getChildByName("section2_btn") as BasicButton;
			section2Button.addEventListener(MouseEvent.CLICK, onSection2Click);
		}

		private function onSection1Click(event : MouseEvent) : void {
			dispatchEvent(new SectionEvent(SectionEvent.SECTION1_REQUEST));
			close();
		}
		
		private function onSection2Click(event : MouseEvent) : void {
			dispatchEvent(new SectionEvent(SectionEvent.SECTION2_REQUEST));
			close();
		}
		
		override protected function close_hook():void 
		{
			section1Button.removeEventListener(MouseEvent.CLICK, onSection1Click);
			section2Button.removeEventListener(MouseEvent.CLICK, onSection2Click);
			
			gotoAndPlay("close");
			
		}
		

	}
}
