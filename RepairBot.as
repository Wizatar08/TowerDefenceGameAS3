package {
	import flash.display.MovieClip;
	
	public class RepairBot extends Building{
		var c_reloadTime
		
		var reloadTime:Number; //reload time of the tower
		var cost:Number;       //cost of the towe
		
		var specialty:String      // shooter, explosive, magic, na
		var buildingType:String   // shooter, tilePlacer, mine, laser, 
		var buildingTypeSpecific:String
		
		var range = 0;
		
		public function RepairBot(main){
			reloadTime = 15 * main.getFrameRate()
			c_reloadTime = 15 * main.getFrameRate()
			
			cost = 120
			
			specialty = "defence"
			buildingType = "repair"
			super(main)
		}


		override public function isUpgradable(isUpgradable: Boolean = true) {
			return false;
		}
		
	}
}