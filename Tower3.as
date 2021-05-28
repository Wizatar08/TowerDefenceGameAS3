package {
	import flash.display.MovieClip;
	
	public class Tower3 extends Building{
		var c_reloadTime
		
		var reloadTime:Number; //reload time of the tower
		var range:Number;      //range of the tower
		var cost:Number;       //cost of the towe
		var damage:Number
		var tileRate:Number
		var mudSlow:Number;
		var bSpeed: Number
		
		var specialty:String      // shooter, explosive, magic, na
		var buildingType:String   // shooter, tilePlacer, mine, laser, 
		var buildingTypeSpecific:String
		
		public function Tower3(main, isUpgraded: Boolean = false){
			reloadTime = 12/24 * main.getFrameRate()
			c_reloadTime = 12/24 * main.getFrameRate()
			range = 125
			damage = 20
			cost = 375
			tileRate = 0
			mudSlow = 0
			bSpeed = 10
			
			specialty = "shooter"
			buildingType = "shooter"
			super(main, isUpgraded)
		}
		
		override public function getLevel(level: int = 1){
			return 3;
		}
		
	}
}