package {
	import flash.display.MovieClip;
	
	public class SlopDispenser extends Building{
		var c_reloadTime
		var reloadTime:Number; //reload time of the tower
		var range:Number;      //range of the tower
		var cost:Number;       //cost of the towe
		var tileRate:Number
		var mudSlow:Number;
		
		var specialty:String      // shooter, explosive, magic, na
		var buildingType:String   // shooter, tilePlacer, mine, laser, 
		var buildingTypeSpecific:String
		
		public function SlopDispenser(main, isUpgraded: Boolean = false){
			reloadTime = 192/24 * main.getFrameRate()
			c_reloadTime = 192/24 * main.getFrameRate()
			range = -1
			cost = 40
			tileRate = 84/24 * main.getFrameRate()
			mudSlow = 50
			
			specialty = "na"
			buildingType = "tilePlacer"
			super(main, isUpgraded)
		}
		
		override public function getLevel(level: int = 1){
			return 1;
		}
		
	}
}