package {
	import flash.display.MovieClip;
	
	public class Hydrojetter extends Building{
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
		
		public function Hydrojetter(main, isUpgraded: Boolean = false){
			reloadTime = 96/24 * main.getFrameRate();
			c_reloadTime = 96/24 * main.getFrameRate();
			range = 150
			damage = 30
			cost = 160
			tileRate = -1
			mudSlow = 0
			bombFuze = 12
			
			specialty = "shooter"
			buildingType = "shooter"
			super(main, isUpgraded)
		}
		
		override public function getLevel(level: int = 1){
			return 1;
		}
		
	}
}