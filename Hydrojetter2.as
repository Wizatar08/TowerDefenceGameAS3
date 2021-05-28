package {
	import flash.display.MovieClip;
	
	public class Hydrojetter2 extends Building{
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
		
		public function Hydrojetter2(main, isUpgraded: Boolean = false){
			reloadTime = 72/24 * main.getFrameRate();
			c_reloadTime = 72/24 * main.getFrameRate();
			range = 175
			damage = 45
			cost = 420
			tileRate = -1
			mudSlow = 0
			bombFuze = 12
			
			specialty = "shooter"
			buildingType = "shooter"
			super(main, isUpgraded)
		}
		
		override public function getLevel(level: int = 1){
			return 2;
		}
		
	}
}