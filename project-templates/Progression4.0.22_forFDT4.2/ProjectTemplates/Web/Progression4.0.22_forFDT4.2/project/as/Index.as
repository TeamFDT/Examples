/**
* @author ${user}
*/
package {
	import jp.progression.casts.*;
	import jp.progression.config.*;
	import jp.progression.debug.Debugger;
	/**
	 *  ${IndexClass}
	 */
	public class ${IndexClass} extends CastDocument {
		
		/**
		 *  ${IndexClass} Instance
		 */
		public function ${IndexClass}() 
		{
			super( "index", IndexScene, new WebConfig() );
		}
		
		
		/**
		 * Ready
		 */
		override protected function atReady():void 
		{
			Debugger.addTarget( manager );
			manager.sync = true;
			// Go to First Scene
			manager.goto( manager.syncedSceneId );
			
		}
	}
}
