package {
	import flash.display.MovieClip;
	
	public class Hydrojetter3 extends Building{
		var c_reloadTime
		
		var reloadTime:Number; //reload time of the tower
		var range:Number;      //range of the tower
		var cost:Number;   //cost of the tower
		var damage:Number
		var tileRate:Number
		var mudSlow:Number;
		var bombFuze:Number
		
		var specialty:String      // shooter, explosive, magic, na
		var buildingType:String   // shooter, tilePlacer, mine, laser, 
		var buildingTypeSpecific:String
		
		public function Hydrojetter3(main, isUpgraded: Boolean = false){
			reloadTime = 48/24 * main.getFrameRate();
			c_reloadTime = 48/24 * main.getFrameRate();
			range = 200
			damage = 65
			cost = 930
			tileRate = -1
			mudSlow = 0
			bombFuze = 12
			
			specialty = "shooter"
			buildingType = "shooter"
			super(main, isUpgraded)
		}


		override public function isUpgradable(isUpgradable: Boolean = true) {
			return false;
		}
		
		override public function getLevel(level: int = 1){
			return 3;
		}
		
	}
}