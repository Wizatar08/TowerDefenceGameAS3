package {
	import flash.display.MovieClip;
	
	public class Tower2 extends Building{
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
		
		public function Tower2(main, isUpgraded: Boolean = false){
			reloadTime = 24/24 * main.getFrameRate()
			c_reloadTime = 24/24 * main.getFrameRate()
			range = 100
			damage = 15
			cost = 150
			tileRate = 0
			mudSlow = 0
			bSpeed = 7
			
			specialty = "shooter"
			buildingType = "shooter"
			super(main, isUpgraded)
		}
		
		override public function getLevel(level: int = 1){
			return 2;
		}
		
	}
}