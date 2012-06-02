/**
 * Progression 4
 * 
 * @author Copyright (C) 2007-2010 taka:nium.jp, All Rights Reserved.
 * @version 4.0.2
 * @see http://progression.jp/
 * 
 * Progression Libraries is dual licensed under the "Progression Library License" and "GPL".
 * http://progression.jp/license
 */
package jp.progression.core.L10N {
	import jp.nium.core.L10N.L10NMsg;
	
	/**
	 * @private
	 */
	public dynamic final class L10NComponentMsg extends L10NMsg {
		
		/**
		 * @private
		 */
		private static var _instance:L10NComponentMsg = new L10NComponentMsg();
		
		
		
		
		
		/**
		 * @private
		 */
		public function L10NComponentMsg() {
		}
		
		
		
		
		
		/**
		 * @private
		 */
		public static function getInstance():L10NComponentMsg {
			return _instance;
		}
	}
}
