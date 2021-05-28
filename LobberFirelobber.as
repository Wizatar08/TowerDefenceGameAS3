package {
	import flash.display.MovieClip;

	public class LobberFirelobber extends Building {
		var main

		var c_reloadTime

		var reloadTime: Number; //reload time of the tower
		var range: Number; //range of the tower
		var cost: Number; //cost of the tower
		var damage: Number
		var scorchDamage: Number
		var tileRate: Number
		var mudSlow: Number;
		var bombFuze: Number
		var bSpeed: Number
		var bTime

		var specialty: String // shooter, explosive, magic, na
		var buildingType: String // shooter, tilePlacer, mine, laser, 
		var buildingTypeSpecific: String

		var flameTime
		var c_flameTime

		var scorchTier // 5 tiers
		var reachTier // 5 tiers

		var towerMode
		var ejectTime
		var ejectMode

		public function LobberFirelobber(m, isUpgraded: Boolean = false) {
			main = m;

			gotoAndStop(1);

			reloadTime = 120 / 24 * main.getFrameRate();
			c_reloadTime = 120 / 24 * main.getFrameRate();
			range = 120
			damage = 0.1
			scorchDamage = 5
			cost = 1100
			tileRate = -1
			mudSlow = 0
			bombFuze = -101
			bSpeed = 4
			bTime = 1;

			specialty = "thermal"
			buildingType = "shooter"

			flameTime = 0.5 * main.getFrameRate();
			c_flameTime = flameTime

			scorchTier = 0;
			reachTier = 0;

			towerMode = "release";
			ejectMode = 0;
			super(main, isUpgraded)
		}

		override public function update() {
			if (reachTier == 0) {
				bSpeed = 4
			} else if (reachTier == 1) {
				bSpeed = 5
			} else if (reachTier == 2) {
				bSpeed = 6
			} else if (reachTier == 3) {
				bSpeed = 7
			} else if (reachTier == 4) {
				bSpeed = 8
			} else if (reachTier == 5) {
				bSpeed = 10
			}

			if (scorchTier == 0) {
				scorchDamage = 5
			} else if (scorchTier == 1) {
				scorchDamage = 6
			} else if (scorchTier == 2) {
				scorchDamage = 7
			} else if (scorchTier == 3) {
				scorchDamage = 8
			} else if (scorchTier == 4) {
				scorchDamage = 9.5
			} else if (scorchTier == 5) {
				scorchDamage = 11
			}

			if (ejectMode > 0) {
				gotoAndStop(2)
			}
			if (ejectMode == 1) {
				this.eject.alpha += main.elapsedSeconds;
				if (this.eject.alpha >= 1) {
					ejectMode = 2
				}
			} else if (ejectMode == 2) {
				ejectTime -= main.elapsedSeconds * main.getFrameRate();
				for (var i = 0; i < 360; i += 5) {
					var tmpFire = new Fire(main, i * (Math.PI / 180), null, 0.2, 8, 0.4, this.scorchDamage)
					tmpFire.gotoAndStop(Math.ceil(Math.random() * 4))
					tmpFire.rotation = i * (Math.PI / 180)
					tmpFire.x = this.x;
					tmpFire.y = this.y + 15;
					main.addChild(tmpFire);
					//stageObjects.push(tmpBullet);
					main.bullets.push(tmpFire); //add tmpBullet to the list of bullets fired
				}
				if(ejectTime <= 0){
					ejectMode = 3;
				}
			} else if (ejectMode == 3) {
				this.eject.alpha -= main.elapsedSeconds;
				if (this.eject.alpha <= 0) {
					towerMode = "release";
					this.gotoAndStop(1)
					ejectMode = 0;
				}
			}
		}

		public function ejectFire() {
			towerMode = "eject"
			ejectTime = 0.5 * main.getFrameRate();
			ejectMode = 1
			this.gotoAndStop(2);
			this.eject.alpha = 0;
		}


		override public function isUpgradable(isUpgradable: Boolean = true) {
			return false;
		}
		
		override public function getLevel(level: int = 1){
			return 4;
		}

	}
}