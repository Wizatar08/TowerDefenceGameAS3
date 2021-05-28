package {
	import flash.display.MovieClip;
	
	public class GoldHarvester3 extends Building{
		var c_reloadTime
		
		var reloadTime:Number; //reload time of the tower
		var range:Number;      //range of the tower
		var cost:Number;   //cost of the tower
		var damage:Number
		var tileRate:Number
		var mudSlow:Number;
		var goldBonus:Number
		var goldDamage:Number
		
		var specialty:String      // shooter, explosive, magic, na
		var buildingType:String   // shooter, tilePlacer, mine, laser, 
		var buildingTypeSpecific:String
		
		public function GoldHarvester3(main, isUpgraded: Boolean = false){
			reloadTime = 24/24 * main.getFrameRate();
			c_reloadTime = 24/24 * main.getFrameRate();
			range = -1
			damage = -1
			cost = 1025
			tileRate = 72/24 * main.getFrameRate();
			mudSlow = 0
			goldBonus = 3 - 1
			goldDamage = 0.5 // 12 per second
			
			specialty = "magic"
			buildingType = "tilePlacer"
			super(main, isUpgraded)
		}
		
		override public function getLevel(level: int = 1){
			return 3;
		}
		
	}
}