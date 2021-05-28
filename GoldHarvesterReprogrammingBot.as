package {
	import flash.display.MovieClip;

	public class GoldHarvesterReprogrammingBot extends Building {
		private var main: Main
		var c_reloadTime

		var reloadTime: Number; //reload time of the tower
		var range: Number; //range of the tower
		var cost: Number; //cost of the tower
		var damage: Number

		var specialty: String // shooter, explosive, magic, na
		var buildingType: String // shooter, tilePlacer, mine, laser, 
		var buildingTypeSpecific: String
		
		public var skillsTier
		public var programTier

		public function GoldHarvesterReprogrammingBot(main, isUpgraded: Boolean = false) {
			this.main = main;
			reloadTime = 10 * main.getFrameRate(); // 10
			c_reloadTime = 10 * main.getFrameRate(); // 10
			range = -1
			damage = -1
			cost = 1300

			specialty = "energy"
			buildingType = "hijack"
			
			skillsTier = 0;
			programTier = 0;
			super(main, isUpgraded)
		}

		public function reprogram() {
			var count = 0;
			var monstersInRange = new Array();
			for (var i = 0; i < main.monsters.length; i++) {
				var a = main.monsters[i].x - this.x
				var b = main.monsters[i].y - this.y
				var h = Math.sqrt((a * a) + (b * b))
				if (h <= 70 && main.monsters[i].protTier <= this.skillsTier + 1 && main.monsters[i].reprogramMode == 0) {
					count++
					if (monstersInRange.length < 10) {
						monstersInRange.push(main.monsters[i]);
					}
				}
			}
			var spawned = false;
			if (count >= 10) {
				for (var i1 = 0; i1 < main.monsters.length; i1++) {
					for (var j = 0; j < monstersInRange.length; j++) {
						if ((main.monsters[i1] == monstersInRange[j]) && (main.monsters[i1].reprogramMode == 0)) {
							if (spawned == false) {
								main.monsters[i1].removeLives *= -1;
								main.monsters[i1].hbEx = 100;
								main.monsters[i1].reprogramMode = programTier + 1;
								spawned = true
							} else if(main.monsters[i1].reprogramMode == 0){
								main.monsters[i1].disableSpeed = 0;
								main.monsters[i1].disabled = true;
							}
						}
					}
				}
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