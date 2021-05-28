package {
	import flash.display.MovieClip;

	public class TowerSniper extends Building {
		var c_reloadTime

		var reloadTime: Number; //reload time of the tower
		var range: Number; //range of the tower
		var cost: Number; //cost of the tower
		var damage: Number
		var tileRate: Number
		var mudSlow: Number;
		var bSpeed: Number

		var specialty: String // shooter, explosive, magic, na
		var buildingType: String // shooter, tilePlacer, mine, laser, 
		var buildingTypeSpecific: String

		public var explosionTier
		public var shotgunTier
		public var rapidFire
		
		public var randExplosion
		public var extraBullets
		public var rapidBullets

		public function TowerSniper(main, isUpgraded: Boolean = false) {
			reloadTime = 6 * main.getFrameRate()
			c_reloadTime = 6 * main.getFrameRate()
			range = 500
			damage = 250
			cost = 950
			tileRate = -1
			mudSlow = 0
			bSpeed = 50

			specialty = "shooter"
			buildingType = "shooter"
			
			explosionTier = 0
			shotgunTier = 0
			rapidFire = false
			
			randExplosion = -1
			extraBullets = 0
			rapidBullets = 0;
			super(main, isUpgraded)
		}

		override public function update() {
			if(explosionTier == 0){
				randExplosion = 0//-1
			} else if(explosionTier == 1){
				randExplosion = 10
			} else if(explosionTier == 2){
				randExplosion = 15
			} else if(explosionTier == 3){
				randExplosion = 20
			} else if(explosionTier == 4){
				randExplosion = 35
			}
			
			if(shotgunTier == 0){
				extraBullets = 0;
			} else if(shotgunTier == 1){
				extraBullets = 2;
			} else if(shotgunTier == 2){
				extraBullets = 5;
			} else if(shotgunTier == 3){
				extraBullets = 9;
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