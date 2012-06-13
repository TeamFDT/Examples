// Fix Package
package 
{
	// Import Sprite
	// Implement Unsed Members
	// Rame Pacakge
	// Create New Interface
	public class QuickFix extends Sprite implements MyInterface
	{
	
		// Cast Completion
		public function demo1() : void {
			var myString : String = '';
			var myInt : int = 0;

			myString = String(myInt);
		}

		// Change Method Return Type
		public function demo2() : int
		{
			return int('a string');
		}

		// New Local Variable
		public function demo7() : void
		{
			var myLocalVar : String = '';
			
		}

		// Create New Field
		public function demo5() : void {
			myFieldVar = '';
		}

		// Create New Method
		public function demo8() : void {
			myNewMethod(8); 
		}

		private function myNewMethod(myNumber : int) : void
		{
		}
		

		// Create New Class
		public function demo4() : void {
			myclass = new  NewClass();
		}

		// Add Method To New Class
		public function demo156() : void {
			myclass.newMethod();
		}

		// Add Method WIth Variable To New Class
		public function demo157() : void {
			myclass.newOtherMethod(10);
		}

		// Add Variable To New Class
		public function demo15() : void {
			myclass.myNewProperty = 10;
		}
		
		// Create New MXML Class
		public function demo9() : void {
			myMXMLClass = new NewMXMLClass(); 
		}

		// Create Namespace
		public function demo10() : void {
			 NewNameSpace::TRUE;
		}

		// Create New Parameter
		public function demo11(myParam : int) : void
		{
			myParam = 10; 
		}

		// Create Top Level Var
		public function demo12() : void {
			  myVar = 10;
		}

		// Create Event Listener
		public function demo13() : void {
			this.addEventListener(Event.FRAME_CONSTRUCTED, myListener);
		}

		private function myListener(event : Event) : void
		{
			
		}

		// Create New Staitc Var
		public function demo14() : void {
			this.dispatchEvent(new Event(QUICK_FIX_EVENT_CHANGE));
			var myNumber : int = MY_CONSTANT;
		}

	}
}
