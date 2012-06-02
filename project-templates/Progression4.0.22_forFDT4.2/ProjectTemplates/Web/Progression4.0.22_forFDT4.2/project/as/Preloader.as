/**
* @author 
*/
package
{
	import jp.progression.casts.*;
	import jp.progression.executors.*;

	import flash.net.*;
	
	
	/**
	 * ${PreloaderClass}
	 */
	public class ${PreloaderClass} extends CastPreloader
	{
		
		/**
		 * ${PreloaderClass} Instance
		 */
		public function ${PreloaderClass}() 
		{
			super( new URLRequest( "${swfDir}index.swf" ), false, CommandExecutor );
			
		}
		
		/**
		 * 
		 */
		override protected function atReady():void 
		{
			
			
		}
		
		/**
		 */
		override protected function atCastLoadStart():void 
		{
			addCommand(
			);
		}
		
		/**
		 */
		override protected function atProgress():void 
		{
		}
		
		/**
		 */
		override protected function atCastLoadComplete():void 
		{
			addCommand(
			);
		}
	}
}
