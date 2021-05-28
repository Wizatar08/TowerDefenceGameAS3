package {
	import flash.display.MovieClip;
	
	public class SlopDispenserAshFog extends Building{
		var c_reloadTime
		
		var reloadTime:int; //reload time of the tower
		var range:int;      //range of the tower
		var cost:int;       //cost of the towe
		var tileRate:int
		var mudSlow:int;
		
		var specialty:String      // shooter, explosive, magic, na
		var buildingType:String   // shooter, tilePlacer, mine, laser, 
		var buildingTypeSpecific:String
		
		var concentrationTier
		var burningTier
		var diameterTier
		
		public var concentration
		public var burn
		
		public function SlopDispenserAshFog(main, isUpgraded: Boolean = false){
			reloadTime = 24/24 * main.getFrameRate()
			c_reloadTime = 24/24 * main.getFrameRate()
			range = -1
			cost = 1000
			tileRate = -1
			mudSlow = -1
			
			specialty = "kinetic"
			buildingType = "cloud"
			
			concentrationTier = 0
			burningTier = 0
			diameterTier = 0
			
			concentration = 1/2
			super(main, isUpgraded)
		}
		
		override public function update(){
			if(concentrationTier == 0){
				concentration = 1/2
			} else if(concentrationTier == 1){
				concentration = 1/3
			} else if(concentrationTier == 2){
				concentration = 1/4
			} else if(concentrationTier == 3){
				concentration = 1/5
			}
			if(burningTier == 0){
				burn = 0
			} else if(burningTier == 1){
				burn = 0.1
			} else if(burningTier == 2){
				burn = 0.2
			} else if(burningTier == 3){
				burn = 1/3
			}
		}


		override public function isUpgradable(isUpgradable: Boolean = true) {
			return false;
		}
		
		override public function getLevel(level: int = 1){
			return 4;
		}
		
	}
}