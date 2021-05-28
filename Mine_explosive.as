package {
	import flash.display.MovieClip;
	
	public class Mine_explosive extends Building{
		const c_reloadTime = -1
		
		var reloadTime:int; //reload time of the tower
		var range:int;      //range of the tower
		var cost:int;       //cost of the towe
		var damage:int
		var tileRate:int
		var mudSlow:int;
		var explode
		
		var specialty:String      // shooter, explosive, magic, na
		var buildingType:String   // shooter, tilePlacer, mine, laser, 
		var buildingTypeSpecific:String
		
		public function Mine_explosive(main, isUpgraded: Boolean = false){
			reloadTime = -1
			range = -1
			damage = 10
			cost = 120
			tileRate = 0
			mudSlow = 0
			explode = false
			
			specialty = "explosive"
			buildingType = "mine"
			buildingTypeSpecific = "explode"
			super(main, isUpgraded)
		}


		override public function isUpgradable(isUpgradable: Boolean = true) {
			return false;
		}
		
	}
}