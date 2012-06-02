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

var progression; ( function() {
	progression = function() {};
	
	var d = document,
		swf = swfobject,
		$ = function( id ) { return d.getElementById( id ); },
		$t = function( tagName ) { return d.getElementsByTagName( tagName ); },
		$i = function( value, defaultValue ) {
			if( $x( value ) ) { return value; }
			return defaultValue;
		},
		$x = function( value ) {
			switch ( value ) {
				case ""			:
				case null		:
				case undefined	: { return false; }
			}
			return true;
		},
		$p = function( t1, t2 ) {
			if ( !$x( t1 ) || !$x( t2 ) ) { return t1; }
			
			for ( var p in t2 ) {
				var tt1 = t1[p], tt2 = t2[p];
				if ( typeof( tt1 ) == "object" ) {
					$p( tt1, tt2 );
				}
				else {
					t1[p] = $i( tt1, tt2 );
				}
			}
			return t1;
		},
		$css = function( idOrTagName, attribute ) {
			if ( idOrTagName.charAt( 0 ) == "#" ) {
				var targets = [ $( idOrTagName.slice( 1 ) ) ];
			}
			else {
				var targets = $t( idOrTagName ) || [];
			}
			
			for ( var i = 0, l = targets.length; i < l; i++ ) {
				var target = targets[i];
				if ( target ) {
					$p( target, { style:attribute } );
				}
				else {
					var attrString = "";
					for ( var p in attribute ) {
						attrString += $decamelize( p ) + ":" + attribute[p] + ";";
					}
					swf.createCSS( idOrTagName, attrString );
				}
			}
		},
		$decamelize = function( name ) {
			return name.replace( new RegExp( "[A-Z]", "g" ), function( $0 ) { return "-" + $0.toLowerCase(); } );
		},
		$render = function( config ) {
			var node = d.getElementById( config.htmlContentId );
			if ( node ) {
				node.parentNode.removeChild( node );
			}
			
			if ( config.hscale != "none" || config.vscale != "none" ) {
				var css = { width:"100%", height:"100%", overflow:"auto", margin:"0", padding:"0", background:config.bgcolor };
				$css( "html", css );
				$css( "body", css );
				
				switch ( config.hscale ) {
					case "window"	: { var width = "100%", minWidth = config.width + "px", left = "0", marginLeft = "0"; break; }
					case "default"	: {
						var width = config.width + "px", minWidth = width;
						switch ( config.halign ) {
							case "center"	: { var left = "50%", marginLeft = "-" + Math.ceil( config.width / 2 ) + "px"; break; }
							case "right"	: { var left = "100%", marginLeft = "-" + config.width + "px"; break; }
							default			: { var left = "0", marginLeft = "0"; }
						}
						break;
					}
					case "none"		:
					default			: { break; }
				}
				
				switch ( config.vscale ) {
					case "window"	: { var height = "100%", minHeight = config.height + "px", top = "0", marginTop = "0"; break; }
					case "default"	: {
						var height = config.height + "px", minHeight = height;
						switch ( config.valign ) {
							case "middle"	: { var top = "50%", marginTop = "-" + Math.ceil( config.height / 2 ) + "px"; break; }
							case "bottom"	: { var top = "100%", marginTop = "-" + config.height + "px"; break; }
							default			: { var top = "0", marginTop = "0"; }
						}
						break;
					}
					case "none"		:
					default			: { break; }
				}
				
				$css( "#" + config.attributes.id, { minWidth:minWidth, minHeight:minHeight } );
				$css( "#" + config.contentId, { position:"absolute", width:width, height:height, left:left, top:top, marginLeft:marginLeft, marginTop:marginTop, lineHeight:0 } );
				$css( "#" + config.htmlContentId, { position:"absolute", width:"0", height:"0", left:"0", top:"0", display:"none", visibility:"hidden" } );
			}
			else {
				$css( "#" + config.contentId, { width:config.width + "px", height:config.height + "px" } );
			}
		},
		config = {},
		defaultConfig = {
			version				:"9.0.45",
			url					:"index.swf",
			width				:800,
			height				:600,
			halign				:"center",
			valign				:"middle",
			hscale				:"default",
			vscale				:"default",
			contentId			:"content",
			htmlContentId		:"htmlcontent",
			flashContentId		:"flashcontent",
			expressInstallPath	:"commons/scripts/swfobject/expressinstall.swf",
			bgcolor				:"#FFFFFF",
			params				:{ allowscriptaccess:"always" },
			flashvars			:{},
			attributes			:{}
		};
	
	progression.embedSWF = function( customConfig ) {
		config = $p( customConfig, defaultConfig );
		
		config.attributes.id = config.attributes.name = "external_" + config.contentId;
		config.params.bgcolor = config.bgcolor;
		config.params.wmode = "window";
		config.params.allowfullscreen = "true";
		
		$render( config );
		
		swf.embedSWF( config.url, config.flashContentId, "100%", "100%", config.version, config.expressInstallPath, config.flashvars, config.params, config.attributes, complete );
	};
	
	var complete = function( e ) {
		$p( $( "disabled_javascript" ), { style:{ display:"none" } } );
		
		$render( config );
		
		if ( e.success ) {
			var target = d.getElementById( config.attributes.id );
			
			if ( target ) {
				target.style.outline = "none";
				target.focus();
			}
		}
	};
} )();
