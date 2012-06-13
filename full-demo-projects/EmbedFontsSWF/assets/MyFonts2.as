package
{
	import mx.core.FontAsset;

	import flash.display.Sprite;
	import flash.system.Security;
	import flash.text.Font;
	import flash.utils.describeType;

	public class MyFonts2 extends Sprite
	{
		[Embed(source="Quicksand.otf", mimeType="application/x-font-truetype", fontName="Quicksand", unicodeRange="U+002E,U+0030-U+0039", embedAsCFF="false")]
		// Numerals [0..9] ; chars=""
		public  var Quicksand : Class;
		[Embed(source="RondaSeven.ttf", mimeType="application/x-font-truetype", fontName="RondaSeven", unicodeRange="U+0020-U+002F,U+0030-U+0039,U+003A-U+0040,U+0041-U+005A,U+005B-U+0060,U+0061-U+007A,U+007B-U+007E,U+02C6,U+02DC,U+2013-U+2014,U+2018-U+201A,U+201C-U+201E,U+2020-U+2022,U+2026,U+2030,U+2039-U+203A,U+20AC,U+2122", embedAsCFF="false")]
		// Uppercase [A..Z] ; Lowercase [a..z] ; Numerals [0..9] ; Punctuation [!@#%...] ; chars=""
		public  var RondaSeven : Class;

		public function MyFonts2()
		{
			FontAsset;
			Security.allowDomain("*");
			var xml : XML = describeType(this);
			for (var i : uint = 0; i < xml.variable.length(); i++)
			{
				Font.registerFont(this[xml.variable[i].@name]);
			}
		}
	}
}