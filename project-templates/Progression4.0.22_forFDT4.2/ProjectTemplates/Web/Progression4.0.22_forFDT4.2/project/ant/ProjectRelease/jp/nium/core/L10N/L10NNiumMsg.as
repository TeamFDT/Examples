/**
 * Progression 4
 * 
 * @author Copyright (C) 2007-2010 taka:nium.jp, All Rights Reserved.
 * @version 4.0.2 Public Beta 1.3
 * @see http://progression.jp/
 * 
 * Progression Software is released under the Progression Software License:
 * http://progression.jp/en/overview/license
 * 
 * Progression Libraries is released under the MIT License:
 * http://www.opensource.org/licenses/mit-license.php
 */
package jp.nium.core.L10N {
	
	/**
	 * @private
	 */
	public dynamic final class L10NNiumMsg extends L10NMsg {
		
		/**
		 * @private
		 */
		private static var _instance:L10NNiumMsg = new L10NNiumMsg();
		
		
		
		
		
		/**
		 * @private
		 */
		public function L10NNiumMsg() {
		}
		
		
		
		
		
		/**
		 * @private
		 */
		public static function getInstance():L10NNiumMsg {
			return _instance;
		}
	}
}
