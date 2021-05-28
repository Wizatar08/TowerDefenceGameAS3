package {
	import flash.display.MovieClip;
	
	public class GoldHarvester extends Building{
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
		
		public function GoldHarvester(main, isUpgraded: Boolean = false){
			reloadTime = 96/24 * main.getFrameRate();
			c_reloadTime = 48/24 * main.getFrameRate();
			range = -1
			damage = -1
			cost = 50
			tileRate = 2 * main.getFrameRate();
			mudSlow = 0
			goldBonus = 2 - 1
			goldDamage = 1/(24/2) // 2 per second
			
			specialty = "magic"
			buildingType = "tilePlacer"
			super(main, isUpgraded)
		}
		
		override public function getLevel(level: int = 1){
			return 1;
		}
		
	}
}