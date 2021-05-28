package {
	import flash.display.MovieClip;

	public class TowerMachineGun extends Building {
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

		var damageTier
		var rapidTier
		var rangeTier

		public function TowerMachineGun(main, isUpgraded: Boolean = false) {
			reloadTime = 3/24 * main.getFrameRate()
			c_reloadTime = 3/24 * main.getFrameRate()
			range = 90
			damage = 7
			cost = 900
			tileRate = -1
			mudSlow = 0
			bSpeed = 20

			specialty = "shooter"
			buildingType = "shooter"

			damageTier = 0
			rapidTier = 0
			rangeTier = 0
			super(main, isUpgraded)
		}

		override public function update() {
			if (damageTier == 0) {
				damage = 8
			} else if (damageTier == 1) {
				damage = 10
			} else if (damageTier == 2) {
				damage = 12
			} else if (damageTier == 3) {
				damage = 15
			}
			
			
			if (rangeTier == 0) {
				range = 90
			} else if (rangeTier == 1) {
				range = 100
			} else if (rangeTier == 2) {
				range = 115
			} else if (rangeTier == 3) {
				range = 130
			} else if (rangeTier == 4) {
				range = 150
			} else if (rangeTier == 5) {
				range = 180
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