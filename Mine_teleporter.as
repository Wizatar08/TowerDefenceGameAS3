package {
	import flash.display.MovieClip;
	
	public class Mine_teleporter extends Building{
		const c_reloadTime = -1
		
		var reloadTime:int; //reload time of the tower
		var range:int;      //range of the tower
		var cost:int;       //cost of the towe
		var damage:int
		var tileRate:int
		var mudSlow:int;
		var explode
		
		var specialty:String      // shooter, explosive, magic, energy, na
		var buildingType:String   // shooter, tilePlacer, mine, laser, 
		var buildingTypeSpecific:String
		
		public function Mine_teleporter(main, isUpgraded: Boolean = false){
			reloadTime = -1
			range = -1
			damage = -1
			cost = 185
			tileRate = 0
			mudSlow = 0
			explode = false
			
			specialty = "magic"
			buildingType = "mine"
			buildingTypeSpecific = "teleporter"
			super(main, isUpgraded)
		}


		override public function isUpgradable(isUpgradable: Boolean = true) {
			return false;
		}
		
	}
}