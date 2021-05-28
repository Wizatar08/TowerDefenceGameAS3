package {
	import flash.display.MovieClip;
	
	public class SlopDispenser3 extends Building{
		var c_reloadTime
		var reloadTime:Number; //reload time of the tower
		var range:Number;      //range of the tower
		var cost:Number;       //cost of the towe
		var tileRate:Number
		var mudSlow:Number;
		
		var specialty:String      // shooter, explosive, magic, na
		var buildingType:String   // shooter, tilePlacer, mine, laser, 
		var buildingTypeSpecific:String
		
		public function SlopDispenser3(main, isUpgraded: Boolean = false){
			reloadTime = 72/24 * main.getFrameRate()
			c_reloadTime = 72/24 * main.getFrameRate()
			range = -1
			cost = 550
			tileRate = 144/24 * main.getFrameRate()
			mudSlow = 50
			
			specialty = "na"
			buildingType = "tilePlacer"
			super(main, isUpgraded)
		}
		
		override public function getLevel(level: int = 1){
			return 3;
		}
		
	}
}