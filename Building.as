package {
	import flash.display.MovieClip;
	import flash.text.TextField;

	public class Building extends MovieClip {
		private var main: Main;
		public var cooldown;
		public var c_cooldown;
		private var removedCooldownSymbol;
		public var hoverInfo: HoverInfo;
		public var upgradeInfo: TowerHoverUpgrades;

		public var remove: Boolean
		private var reloadTimeDone: Boolean
		public var cooldownTimer: CooldownBar;

		private var x1 = -24
		private var y1 = 6
		private var x2 = 5
		private var y2 = 6
		private var x3 = -24
		private var y3 = 15
		private var x4 = 5
		private var y4 = 15
		private var x5 = -24
		private var y5 = 24
		private var x6 = 5
		private var y6 = 24

		private var ux1 = -24
		private var uy1 = 4
		private var ux1c = 13
		private var uy1c = 4
		private var ux2 = -24
		private var uy2 = 13
		private var ux2c = 13
		private var uy2c = 13
		private var ux3 = -24
		private var uy3 = 22
		private var ux3c = 13
		private var uy3c = 22

		private var lock1
		private var lock2
		private var lock3

		private var machinegun
		private var sniper
		private var ashfog
		private var reprogramming
		private var firelobber

		private var bcost
		private var ucost1
		private var ucost2
		private var ucost3
		private var bdamage
		private var brange
		private var breload
		private var bupgrade
		private var bsell
		private var btilerate
		private var bbombtime
		private var bmagicdamage
		private var bgoldmultiplyer

		private var btmachinegun
		private var btsniper
		private var bsdashfog
		private var blfirelobber
		private var bghreprogramming

		public var hasSetBuilding: Boolean

		public function Building(m: Main, isUpgraded: Boolean = false) {
			main = m
			hasSetBuilding = false;
			remove = false;
			removedCooldownSymbol = false;
			reloadTimeDone = false;
			cooldownTimer = new CooldownBar()
			hoverInfo = new HoverInfo();
			upgradeInfo = new TowerHoverUpgrades();
			setCooldownTimer();
			hoverInfo.x = 0;
			hoverInfo.y = 16;
			hoverInfo.width *= main.settingSavedVariables.visual_settings.data.tooltips;
			hoverInfo.height *= main.settingSavedVariables.visual_settings.data.tooltips;
			upgradeInfo.x = 0;
			upgradeInfo.y = 16 + hoverInfo.height + 3
			upgradeInfo.width *= main.settingSavedVariables.visual_settings.data.tooltips;
			upgradeInfo.height *= main.settingSavedVariables.visual_settings.data.tooltips;
			this.addChild(hoverInfo);
			this.addChild(upgradeInfo);
			this.hoverInfo.alpha = 0;
			this.upgradeInfo.alpha = 0;

			lock1 = new Lock();
			lock2 = new Lock();
			lock3 = new Lock();
			ucost1 = new BCost();
			ucost2 = new BCost();
			ucost3 = new BCost();
			
			machinegun = new BBTMachineGun();
			sniper = new BBTSniper();
			ashfog = new BBSDAshFog();
			reprogramming = new BBGHReprogramming();
			firelobber = new BBLFirelobber();

			this.setSymbols(this);
			if (isUpgraded) {
				this.setBuilding(this);
			}
		}

		public function mainUpdate(t) {
			this.update();
			this.allUpdate(t);
		}

		public function update() {}

		public function setBuilding(tower) {
			hasSetBuilding = true;
			this.hoverInfo.removeChild(bcost);
			this.hoverInfo.text1.text = "";
			if (this.isUpgradable()) {
				bupgrade = new BUpgrade();
				bupgrade.x = x1;
				bupgrade.y = y1;
				this.hoverInfo.addChild(bupgrade);
			}
			bsell = new BSell();
			bsell.x = x2;
			bsell.y = y2;
			this.hoverInfo.addChild(bsell);
			this.hoverInfo.text2.text = (Math.round(tower.cost / 2)).toString();
		}

		public function mouseHoveredOn(tower) {
			if (this.isUpgradable()) {
				if (this.cooldown >= 0) {
					this.hoverInfo.text1.text = Math.ceil(this.cooldown / main.getFrameRate()).toString() + "s";
				} else {
					if (this.getLevel() < 3) {
						if (main.bm.getNextUpgradable(this.toString()) != 0) {
							this.hoverInfo.text1.text = (main.bm.getNextUpgradable(this.toString())).toString();
						} else {
							this.hoverInfo.text1.text = "Locked";
						}
					} else if (this.reloadTimeDone == false) {
						this.hoverInfo.removeChild(bupgrade);
						this.hoverInfo.text1.text = "";
					}
					this.reloadTimeDone = true;
				}
			}
			if (this.getLevel() == 3) {}
		}

		private function allUpdate(t) {
			if (cooldown >= 0 && removedCooldownSymbol == false) {
				cooldown -= main.getFrameRate() * t;
				this.cooldownTimer.gotoAndStop(Math.round(100 * (this.cooldown / this.c_cooldown)))
			} else if (removedCooldownSymbol == false) {
				this.removeChild(cooldownTimer);
				removedCooldownSymbol = true;
			}
		}

		public function removeBuild() {
			this.remove = true;
		}

		private function setCooldownTimer(value: int = 5) {
			c_cooldown = value * main.getFrameRate();
			cooldown = c_cooldown;

			cooldownTimer.stop();
			cooldownTimer.x = 0;
			cooldownTimer.y = 6;
			this.addChild(cooldownTimer);
		}

		private function setSymbols(tower) {
			if (this.toString() == "[object Tower]" || this.toString() == "[object Tower2]" || this.toString() == "[object Tower3]" ||
				this.toString() == "[object Hydrojetter]" || this.toString() == "[object Hydrojetter2]" || this.toString() == "[object Hydrojetter3]") {
				setTowerSymbols(tower)
				if (this.toString() == "[object Tower3]") {
					setLevel3Builds();
				}
			} else if (this.toString() == "[object SlopDispenser]" || this.toString() == "[object SlopDispenser2]" || this.toString() == "[object SlopDispenser3]") {
				setSlopDispenserSymbols(tower)
				if (this.toString() == "[object SlopDispenser3]") {
					setLevel3Builds();
				}
			} else if (this.toString() == "[object Lobber]" || this.toString() == "[object Lobber2]" || this.toString() == "[object Lobber3]") {
				setLobberSymbols(tower)
				if (this.toString() == "[object Lobber3]") {
					setLevel3Builds();
				}
			} else if (this.toString() == "[object GoldHarvester]" || this.toString() == "[object GoldHarvester2]" || this.toString() == "[object GoldHarvester3]") {
				setGoldHarvesterSymbols(tower)
				if (this.toString() == "[object GoldHarvester3]") {
					setLevel3Builds();
				}
			}
		}

		private function setLevel3Builds() {
			if (main.bm.getNextUpgradable(this.toString(), 1) != 0) {
				if (this.toString() == "[object Tower3]") {
					ucost1.x = ux1c;
					ucost1.y = uy1c;
					this.upgradeInfo.addChild(ucost1);
					machinegun.x = ux1;
					machinegun.y = uy1;
					this.upgradeInfo.addChild(machinegun);
					this.upgradeInfo.text1.text = "Machine Gun";
					this.upgradeInfo.text1cost.text = "900";
				} else if (this.toString() == "[object SlopDispenser3]") {
					ucost1.x = ux1c;
					ucost1.y = uy1c;
					this.upgradeInfo.addChild(ucost1);
					ashfog.x = ux1;
					ashfog.y = uy1;
					this.upgradeInfo.addChild(ashfog);
					this.upgradeInfo.text1.text = "Ash Fog";
					this.upgradeInfo.text1cost.text = "1000";
				} else if (this.toString() == "[object Lobber3]") {
					ucost1.x = ux1c;
					ucost1.y = uy1c;
					this.upgradeInfo.addChild(ucost1);
					firelobber.x = ux1;
					firelobber.y = uy1;
					this.upgradeInfo.addChild(firelobber);
					this.upgradeInfo.text1.text = "Firelobber";
					this.upgradeInfo.text1cost.text = "900";
				} else if (this.toString() == "[object GoldHarvester3]") {
					ucost1.x = ux1c;
					ucost1.y = uy1c;
					this.upgradeInfo.addChild(ucost1);
					//firelobber.x = ux1;
					//firelobber.y = uy1;
					//this.upgradeInfo.addChild(firelobber);
					this.upgradeInfo.text1.text = "Mine Factory";
					this.upgradeInfo.text1cost.text = "Varies";
				}
			} else {
				lock1.x = ux1;
				lock1.y = uy1;
				this.upgradeInfo.addChild(lock1);
				this.upgradeInfo.text1.text = "Locked";
				this.upgradeInfo.text1cost.text = "";
			}
			if (main.bm.getNextUpgradable(this.toString(), 2) != 0) {
				if (this.toString() == "[object Tower3]") {
					ucost2.x = ux2c;
					ucost2.y = uy2c;
					this.upgradeInfo.addChild(ucost2);
					sniper.x = ux2;
					sniper.y = uy2;
					this.upgradeInfo.addChild(sniper);
					this.upgradeInfo.text2.text = "Shotgun";
					this.upgradeInfo.text2cost.text = "950";
				} else if (this.toString() == "[object GoldHarvester3]") {
					ucost2.x = ux2c;
					ucost2.y = uy2c;
					this.upgradeInfo.addChild(ucost2);
					reprogramming.x = ux2;
					reprogramming.y = uy2;
					this.upgradeInfo.addChild(reprogramming);
					this.upgradeInfo.text2.text = "Reprogrammer";
					this.upgradeInfo.text2cost.text = "1300";
				} 
			} else {
				lock2.x = ux2;
				lock2.y = uy2;
				this.upgradeInfo.addChild(lock2);
				this.upgradeInfo.text2.text = "Locked";
				this.upgradeInfo.text2cost.text = "";
			}if (main.bm.getNextUpgradable(this.toString(), 3) != 0) {
			} else {
				lock3.x = ux3;
				lock3.y = uy3;
				this.upgradeInfo.addChild(lock3);
				this.upgradeInfo.text3.text = "Locked";
				this.upgradeInfo.text3cost.text = "";
			}
		}





		private function setTowerSymbols(tower) {
			bcost = new BCost();
			bcost.x = x1;
			bcost.y = y1;
			this.hoverInfo.addChild(bcost);
			this.hoverInfo.text1.text = tower.cost.toString();

			this.hoverInfo.text2.text = "";

			bdamage = new BDamage();
			bdamage.x = x3;
			bdamage.y = y3
			this.hoverInfo.addChild(bdamage);
			this.hoverInfo.text3.text = tower.damage.toString();

			breload = new BReload();
			breload.x = x4;
			breload.y = y4;
			this.hoverInfo.addChild(breload);
			this.hoverInfo.text4.text = (tower.c_reloadTime / main.getFrameRate()).toString() + "s";

			brange = new BRange();
			brange.x = x5;
			brange.y = y5;
			this.hoverInfo.addChild(brange);
			this.hoverInfo.text5.text = tower.range.toString();

			this.hoverInfo.text6.text = "";
		}
		private function setSlopDispenserSymbols(tower) {
			bcost = new BCost();
			bcost.x = x1;
			bcost.y = y1;
			this.hoverInfo.addChild(bcost);
			this.hoverInfo.text1.text = tower.cost.toString();

			this.hoverInfo.text2.text = "";

			breload = new BReload();
			breload.x = x3;
			breload.y = y3;
			this.hoverInfo.addChild(breload);
			this.hoverInfo.text3.text = (tower.c_reloadTime / main.getFrameRate()).toString() + "s";

			btilerate = new BTileRate();
			btilerate.x = x4;
			btilerate.y = y4;
			this.hoverInfo.addChild(btilerate);
			this.hoverInfo.text4.text = (tower.tileRate / main.getFrameRate()).toString() + "s";

			this.hoverInfo.text5.text = "";
			this.hoverInfo.text6.text = "";
		}
		private function setLobberSymbols(tower) {
			bcost = new BCost();
			bcost.x = x1;
			bcost.y = y1;
			this.hoverInfo.addChild(bcost);
			this.hoverInfo.text1.text = tower.cost.toString();

			this.hoverInfo.text2.text = "";

			bdamage = new BDamage();
			bdamage.x = x3;
			bdamage.y = y3
			this.hoverInfo.addChild(bdamage);
			this.hoverInfo.text3.text = (tower.damage.toString()) + "-" + (tower.damage * 5).toString();

			brange = new BRange();
			brange.x = x4;
			brange.y = y4;
			this.hoverInfo.addChild(brange);
			this.hoverInfo.text4.text = (tower.range).toString();

			breload = new BReload();
			breload.x = x5;
			breload.y = y5;
			this.hoverInfo.addChild(breload);
			this.hoverInfo.text5.text = (tower.c_reloadTime / main.getFrameRate()).toString() + "s";

			bbombtime = new BBombTime();
			bbombtime.x = x6;
			bbombtime.y = y6
			this.hoverInfo.addChild(bbombtime);
			if (tower.bombFuze > 0) {
				this.hoverInfo.text6.text = (tower.bombFuze / 24).toString() + "s";
			} else {
				this.hoverInfo.text6.text = "Infinite";
			}
		}
		private function setGoldHarvesterSymbols(tower) {
			bcost = new BCost();
			bcost.x = x1;
			bcost.y = y1;
			this.hoverInfo.addChild(bcost);
			this.hoverInfo.text1.text = tower.cost.toString();

			this.hoverInfo.text2.text = "";

			breload = new BReload();
			breload.x = x3;
			breload.y = y3;
			this.hoverInfo.addChild(breload);
			this.hoverInfo.text3.text = (tower.c_reloadTime / main.getFrameRate()).toString() + "s";

			btilerate = new BTileRate();
			btilerate.x = x4;
			btilerate.y = y4;
			this.hoverInfo.addChild(btilerate);
			this.hoverInfo.text4.text = (tower.tileRate / main.getFrameRate()).toString() + "s";

			bmagicdamage = new BMagicDamage();
			bmagicdamage.x = x5;
			bmagicdamage.y = y5
			this.hoverInfo.addChild(bmagicdamage);
			this.hoverInfo.text5.text = (tower.goldDamage * 24).toString() + "d/s";

			bgoldmultiplyer = new BGoldMultiplyer();
			bgoldmultiplyer.x = x6;
			bgoldmultiplyer.y = y6
			this.hoverInfo.addChild(bgoldmultiplyer);
			this.hoverInfo.text6.text = (tower.goldBonus + 1).toString() + "x";
		}


		private function continuousUpdateTowerSymbols() {

		}


		public function isUpgradable(isUpgradable: Boolean = true) {
			return isUpgradable;
		}
		public function getLevel(level: int = 1) {
			return level;
		}


		/*
		Building stats:
		- Cost
		- Damage
		- Range (shooting)
		- Reload time
		- Tile rate
		- Gold multiplier
		- Magic damage
		- Type (mine)
		*/

	}

}