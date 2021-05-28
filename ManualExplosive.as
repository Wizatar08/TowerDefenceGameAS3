package {
	import flash.display.MovieClip;

	public class ManualExplosive extends Building {
		private var main

		var reloadTime = -1
		var cost: Number; //cost of the towe

		var specialty: String // shooter, explosive, magic, na
		var buildingType: String // shooter, tilePlacer, mine, laser, 
		var buildingTypeSpecific: String
		private var time
		private var isExplode
		
		var range = 0;

		public function ManualExplosive(m) {
			main = m;

			cost = 150

			specialty = "defence"
			buildingType = "kinetic"

			time = 0.5 * main.getFrameRate();
			isExplode = false;
			super(main)
		}

		override public function update() {
			if (isExplode) {
				this.gotoAndPlay(2)
				time -= main.elapsedSeconds * main.getFrameRate();
				if (time <= 0) {
					for (var i1 = 0; i1 < 360; i1 += 5) {
						var tmpFire = new Fire(main, i1 * (Math.PI / 180), true, 24, 8, 0.4, 15)
						tmpFire.gotoAndStop(Math.ceil(Math.random() * 4))
						tmpFire.rotation = i1 * (Math.PI / 180)
						tmpFire.x = this.x;
						tmpFire.y = this.y + 15;
						main.projLayer.addChild(tmpFire);
						main.bullets.push(tmpFire); //add tmpBullet to the list of bullets fired
					}
					for (var i2 = 0; i2 < 5; i2++) {
						var angle: Number = 2 * Math.PI * Math.random(); //compute angle of the bullet
						var tmpBomb: Bomb = new Bomb(main, angle, null, 20, -101); // create a bullet
						tmpBomb.x = this.x;
						tmpBomb.y = this.y;
						main.projLayer.addChild(tmpBomb);
						tmpBomb.gotoAndStop(1)
						main.bombs.push(tmpBomb); //add tmpBullet to the list of bullets fired
					}
/*
					for (var i = 0; i < main.nonPlacableTiles.length; i++) {
						if (this.center.hitTestObject(main.nonPlacableTiles[i])) {
							main.nonPlacableTiles.splice(i, 1)
						}
					}
					for (var j = 0; j < main.upgradableTiles.length; j++) {
						if (this.center.hitTestObject(main.upgradableTiles[j])) {
							main.upgradableTiles.splice(j, 1)
						}
					}*/
					for (var l = 0; l < main.stageObjects.length; l++){
						for(var m = 0; m < main.stageObjects[l].length; m++){
							if(this.center.hitTestObject(main.stageObjects[l][m])){
								if(main.stageObjects[l][m].currentFrame == 97){
									main.stageObjects[l][m].subFrame = main.stageObjects[l][m].tile.currentFrame
									main.stageObjects[l][m].gotoAndStop(243)
								} else if (main.stageObjects[l][m].currentFrame == 241){
									main.stageObjects[l][m].gotoAndStop(285)
								}
							}
						}
					}
					for (var k = 0; k < main.towers.length; k++) {
						if (main.towers[k] == this) {
							main.towers.splice(k, 1);
						}
					}
					main.towerLayer.removeChild(this)
				}
			} else {
				this.gotoAndStop(1)
			}
		}


		public function explode() {
			isExplode = true;
		}


		override public function isUpgradable(isUpgradable: Boolean = true) {
			return false;
		}
	}
}