/**
 * jp.nium Classes
 * 
 * @author Copyright (C) 2007-2010 taka:nium.jp, All Rights Reserved.
 * @version 4.0.2
 * @see http://classes.nium.jp/
 * 
 * jp.nium Classes is released under the MIT License:
 * http://www.opensource.org/licenses/mit-license.php
 */
package jp.nium.core.debug {
	
	/**
	 * @private
	 */
	public class Logger {
		
		/**
		 * @private
		 */
		public static const INFO:int = 0;
		
		/**
		 * @private
		 */
		public static const WARNING:int = 1;
		
		/**
		 * @private
		 */
		public static const ERROR:int = 2;
		
		
		
		
		
		/**
		 * @private
		 */
		public static function get enabled():Boolean { return false; }
		public static function set enabled( value:Boolean ):void {}
		
		/**
		 * @private
		 */
		public static function get level():int { return 0; }
		public static function set level( value:int ):void {}
		
		/**
		 * @private
		 */
		public static function get loggingFunction():Function { return null; }
		public static function set loggingFunction( value:Function ):void {}
		
		
		
		
		
		/**
		 * @private
		 */
		public function Logger() {
		}
		
		
		
		
		
		/**
		 * @private
		 */
		public static function setLog( log:*, language:String ):void {
		}
		
		/**
		 * @private
		 */
		public static function getLog( id:String ):* {
			id;
			return "";
		}
		
		/**
		 * @private
		 */
		public static function getLogByLang( id:String, language:String ):* {
			id;
			language;
			return "";
		}
		
		/**
		 * @private
		 */
		public static function output( ... messages:Array ):void {
		}
		
		/**
		 * @private
		 */
		public static function info( ... messages:Array ):void {
		}
		
		/**
		 * @private
		 */
		public static function warn( ... messages:Array ):void {
		}
		
		/**
		 * @private
		 */
		public static function error( ... messages:Array ):void {
		}
		
		/**
		 * @private
		 */
		public static function separate():void {
		}
		
		/**
		 * @private
		 */
		public static function br():void {
		}
	}
}
