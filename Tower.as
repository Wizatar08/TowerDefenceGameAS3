package {
	import flash.display.MovieClip;
	
	public class Tower extends Building{
		var c_reloadTime
		
		var reloadTime:Number; //reload time of the tower
		var range:Number;      //range of the tower
		var cost:Number;   //cost of the tower
		var damage:Number
		var tileRate:Number
		var mudSlow:Number;
		var bSpeed: Number
		
		var specialty:String      // shooter, explosive, magic, na
		var buildingType:String   // shooter, tilePlacer, mine, laser, 
		var buildingTypeSpecific:String
		
		public function Tower(main, isUpgraded: Boolean = false){
			reloadTime = 36/24 * main.getFrameRate()
			c_reloadTime = 36/24 * main.getFrameRate()
			range = 80
			damage = 10
			cost = 60
			tileRate = -1
			mudSlow = 0
			bSpeed = 5
			
			specialty = "shooter"
			buildingType = "shooter" 
			super(main, isUpgraded)
		}
		
		override public function getLevel(level: int = 1){
			return 1;
		}
		
	}
}