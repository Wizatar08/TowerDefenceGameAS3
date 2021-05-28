package {
	import flash.display.MovieClip;
	
	public class Lobber2 extends Building{
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
		
		public function Lobber2(main, isUpgraded: Boolean = false){
			reloadTime = 84/24 * main.getFrameRate();
			c_reloadTime = 84/24 * main.getFrameRate();
			range = 90
			damage = 5
			cost = 470
			tileRate = -1
			mudSlow = 0
			bombFuze = 18;
			
			specialty = "explosive"
			buildingType = "shooter"
			super(main, isUpgraded)
		}
		
		override public function getLevel(level: int = 1){
			return 2;
		}
		
	}
}